package docspell.joex.mail

import cats.effect._
import cats.implicits._
import fs2.{Pipe, Stream}
import emil.{MimeType => _, _}
import emil.javamail.syntax._
import emil.tnef.TnefExtract
import emil.markdown._
import emil.jsoup._

import docspell.common._
import docspell.store.syntax.MimeTypes._

object ReadMail {

  def readBytesP[F[_]: ConcurrentEffect: ContextShift](
      logger: Logger[F]
  ): Pipe[F, Byte, Binary[F]] =
    _.through(bytesToMail(logger)).flatMap(mailToEntries[F](logger))

  def bytesToMail[F[_]: Sync](logger: Logger[F]): Pipe[F, Byte, Mail[F]] =
    s =>
      Stream.eval(logger.debug(s"Converting e-mail file...")) >>
        s.through(Mail.readBytes[F])

  def mailToEntries[F[_]: ConcurrentEffect: ContextShift](
      logger: Logger[F]
  )(mail: Mail[F]): Stream[F, Binary[F]] = {
    val bodyEntry: F[Option[Binary[F]]] =
      if (mail.body.isEmpty) (None: Option[Binary[F]]).pure[F]
      else {
        val markdownCfg = MarkdownConfig.defaultConfig
        HtmlBodyView(
          mail.body,
          Some(mail.header),
          HtmlBodyViewConfig.default.copy(
            textToHtml = MarkdownBody.makeHtml(markdownCfg)
          )
        ).map(makeHtmlBinary[F] _).map(b => Some(b))
      }

    Stream.eval(
      logger.debug(
        s"E-mail has ${mail.attachments.size} attachments and ${bodyType(mail.body)}"
      )
    ) >>
      (Stream
        .eval(bodyEntry)
        .flatMap(e => Stream.emits(e.toSeq)) ++
        Stream
          .eval(TnefExtract.replace(mail))
          .flatMap(m => Stream.emits(m.attachments.all))
          .map(a =>
            Binary(a.filename.getOrElse("noname"), a.mimeType.toLocal, a.content)
          ))
  }

  private def makeHtmlBinary[F[_]](cnt: BodyContent): Binary[F] =
    Binary.html[F]("mail.html", cnt.bytes, cnt.charsetOrUtf8)

  private def bodyType[F[_]](body: MailBody[F]): String =
    body.fold(
      _ => "empty-body",
      _ => "text-body",
      _ => "html-body",
      _ => "text-and-html-body"
    )
}
