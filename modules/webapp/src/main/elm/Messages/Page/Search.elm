{-
   Copyright 2020 Eike K. & Contributors

   SPDX-License-Identifier: AGPL-3.0-or-later
-}


module Messages.Page.Search exposing
    ( Texts
    , de
    , fr
    , gb
    )

import Data.TimeZone exposing (TimeZone)
import Messages.Basics
import Messages.Comp.BookmarkQueryManage
import Messages.Comp.DownloadAll
import Messages.Comp.ItemCardList
import Messages.Comp.ItemMerge
import Messages.Comp.PublishItems
import Messages.Comp.SearchStatsView
import Messages.Page.SearchSideMenu


type alias Texts =
    { basics : Messages.Basics.Texts
    , itemCardList : Messages.Comp.ItemCardList.Texts
    , searchStatsView : Messages.Comp.SearchStatsView.Texts
    , sideMenu : Messages.Page.SearchSideMenu.Texts
    , itemMerge : Messages.Comp.ItemMerge.Texts
    , publishItems : Messages.Comp.PublishItems.Texts
    , bookmarkManage : Messages.Comp.BookmarkQueryManage.Texts
    , downloadAllComp : Messages.Comp.DownloadAll.Texts
    , contentSearch : String
    , searchInNames : String
    , selectModeTitle : String
    , fullHeightPreviewTitle : String
    , fullWidthPreviewTitle : String
    , powerSearchPlaceholder : String
    , reallyReprocessQuestion : String
    , reallyDeleteQuestion : String
    , reallyRestoreQuestion : String
    , editSelectedItems : Int -> String
    , reprocessSelectedItems : Int -> String
    , deleteSelectedItems : Int -> String
    , undeleteSelectedItems : Int -> String
    , selectAllVisible : String
    , selectNone : String
    , resetSearchForm : String
    , exitSelectMode : String
    , mergeItemsTitle : Int -> String
    , publishItemsTitle : Int -> String
    , publishCurrentQueryTitle : String
    , shareResults : String
    , nothingSelectedToShare : String
    , loadMore : String
    , thatsAll : String
    , showItemGroups : String
    , listView : String
    , tileView : String
    , expandCollapseRows : String
    , bookmarkQuery : String
    , nothingToBookmark : String
    , submitMerge : String
    , mergeInfoText : String
    , mergeDeleteWarn : String
    , submitMergeTitle : String
    , cancelMergeTitle : String
    , mergeSuccessful : String
    , mergeInProcess : String
    , mergeHeader : String
    , linkItemsTitle : Int -> String
    , linkItemsMessage : String
    , submitLinkItems : String
    , submitLinkItemsTitle : String
    , cancelLinkItemsTitle : String
    , linkItemsSuccessful : String
    , linkItemsInProcess : String
    , linkItemsHeader : String
    , downloadAll : String
    , downloadAllQueryNeeded : String
    }


gb : TimeZone -> Texts
gb tz =
    { basics = Messages.Basics.gb
    , itemCardList = Messages.Comp.ItemCardList.gb tz
    , searchStatsView = Messages.Comp.SearchStatsView.gb
    , sideMenu = Messages.Page.SearchSideMenu.gb
    , itemMerge = Messages.Comp.ItemMerge.gb tz
    , publishItems = Messages.Comp.PublishItems.gb tz
    , bookmarkManage = Messages.Comp.BookmarkQueryManage.gb
    , downloadAllComp = Messages.Comp.DownloadAll.gb
    , contentSearch = "Content search…"
    , searchInNames = "Search in names…"
    , selectModeTitle = "Select Mode"
    , fullHeightPreviewTitle = "Full height preview"
    , fullWidthPreviewTitle = "Full width preview"
    , powerSearchPlaceholder = "Search query …"
    , reallyReprocessQuestion = "Really reprocess all selected items? Metadata of unconfirmed items may change."
    , reallyDeleteQuestion = "Really delete all selected items?"
    , reallyRestoreQuestion = "Really restore all selected items?"
    , editSelectedItems = \n -> "Edit " ++ String.fromInt n ++ " selected items"
    , reprocessSelectedItems = \n -> "Reprocess " ++ String.fromInt n ++ " selected items"
    , deleteSelectedItems = \n -> "Delete " ++ String.fromInt n ++ " selected items"
    , undeleteSelectedItems = \n -> "Restore " ++ String.fromInt n ++ " selected items"
    , selectAllVisible = "Select all visible"
    , selectNone = "Select none"
    , resetSearchForm = "Reset search form"
    , exitSelectMode = "Exit Select Mode"
    , mergeItemsTitle = \n -> "Merge " ++ String.fromInt n ++ " selected items"
    , publishItemsTitle = \n -> "Publish " ++ String.fromInt n ++ " selected items"
    , publishCurrentQueryTitle = "Publish current results"
    , shareResults = "Share Results"
    , nothingSelectedToShare = "Sharing everything doesn't work. You need to apply some criteria."
    , loadMore = "Load more…"
    , thatsAll = "That's all"
    , showItemGroups = "Group by month"
    , listView = "List view"
    , tileView = "Tile view"
    , expandCollapseRows = "Expand/Collapse all"
    , bookmarkQuery = "Bookmark query"
    , nothingToBookmark = "Nothing selected to bookmark"
    , submitMerge = "Merge"
    , mergeInfoText = "When merging items the first item in the list acts as the target. Every other items metadata is copied into the target item. If the property is a single value (like correspondent), it is only set if not already present. Tags, custom fields and attachments are added. The items can be reordered using drag&drop."
    , mergeDeleteWarn = "Note that all items but the first one is deleted after a successful merge!"
    , submitMergeTitle = "Merge the documents now"
    , cancelMergeTitle = "Back to select view"
    , mergeSuccessful = "Items merged successfully"
    , mergeInProcess = "Items are merged …"
    , linkItemsTitle = \n -> "Link " ++ String.fromInt n ++ " items"
    , linkItemsMessage = "There must be at least 2 items in the list. The first is the target item and all remaining are added to its related items list."
    , submitLinkItems = "Link"
    , submitLinkItemsTitle = ""
    , cancelLinkItemsTitle = ""
    , linkItemsSuccessful = "Linking items successful"
    , linkItemsInProcess = "Linking items ..."
    , mergeHeader = "Merge Items"
    , linkItemsHeader = "Link Items"
    , downloadAll = "Download all"
    , downloadAllQueryNeeded = "Apply a criteria to reduce what to download."
    }


de : TimeZone -> Texts
de tz =
    { basics = Messages.Basics.de
    , itemCardList = Messages.Comp.ItemCardList.de tz
    , searchStatsView = Messages.Comp.SearchStatsView.de
    , sideMenu = Messages.Page.SearchSideMenu.de
    , itemMerge = Messages.Comp.ItemMerge.de tz
    , publishItems = Messages.Comp.PublishItems.de tz
    , bookmarkManage = Messages.Comp.BookmarkQueryManage.de
    , downloadAllComp = Messages.Comp.DownloadAll.de
    , contentSearch = "Volltextsuche…"
    , searchInNames = "Suche in Namen…"
    , selectModeTitle = "Auswahlmodus"
    , fullHeightPreviewTitle = "Vorschau in voller Höhe"
    , fullWidthPreviewTitle = "Vorschau in voller Breite"
    , powerSearchPlaceholder = "Suchanfrage…"
    , reallyReprocessQuestion = "Wirklich die gewählten Dokumente neu verarbeiten? Die Metadaten von nicht bestätigten Dokumenten können sich dabei ändern."
    , reallyDeleteQuestion = "Wirklich alle gewählten Dokumente löschen?"
    , reallyRestoreQuestion = "Wirklich alle gewählten Dokumente wiederherstellen?"
    , editSelectedItems = \n -> "Ändere " ++ String.fromInt n ++ " gewählte Dokumente"
    , reprocessSelectedItems = \n -> "Erneute Verarbeitung von " ++ String.fromInt n ++ " gewählten Dokumenten"
    , deleteSelectedItems = \n -> "Lösche " ++ String.fromInt n ++ " gewählte Dokumente"
    , undeleteSelectedItems = \n -> "Stelle " ++ String.fromInt n ++ " gewählte Dokumente wieder her"
    , selectAllVisible = "Wähle alle Dokumente in der Liste"
    , selectNone = "Wähle alle Dokumente ab"
    , resetSearchForm = "Suchformular zurücksetzen"
    , exitSelectMode = "Auswahlmodus verlassen"
    , mergeItemsTitle = \n -> String.fromInt n ++ " gewählte Dokumente zusammenführen"
    , publishItemsTitle = \n -> String.fromInt n ++ " gewählte Dokumente publizieren"
    , publishCurrentQueryTitle = "Aktuelle Ansicht publizieren"
    , shareResults = "Ergebnisse teilen"
    , nothingSelectedToShare = "Alles kann nicht geteilt werden; es muss etwas gesucht werden."
    , loadMore = "Mehr laden…"
    , thatsAll = "Mehr gibt es nicht"
    , showItemGroups = "nach Monat gruppieren"
    , listView = "Listenansicht"
    , tileView = "Kachelansicht"
    , expandCollapseRows = "Alle ein-/ausklappen"
    , bookmarkQuery = "Abfrage merken"
    , nothingToBookmark = "Keine Abfrage vorhanden"
    , submitMerge = "Zusammenführen"
    , mergeInfoText = "Beim Zusammenführen der Dokumente, wird das erste in der Liste als Zieldokument verwendet. Die Metadaten der anderen Dokumente werden der Reihe nach auf des Zieldokument geschrieben. Metadaten die nur einen Wert haben, werden nur gesetzt falls noch kein Wert existiert. Tags, Benutzerfelder und Anhänge werden zu dem Zieldokument hinzugefügt. Die Einträge können mit Drag&Drop umgeordnet werden."
    , mergeDeleteWarn = "Bitte beachte, dass nach erfolgreicher Zusammenführung alle anderen Dokumente gelöscht werden!"
    , submitMergeTitle = "Dokumente jetzt zusammenführen"
    , cancelMergeTitle = "Zurück zur Auswahl"
    , mergeSuccessful = "Die Dokumente wurden erfolgreich zusammengeführt."
    , mergeInProcess = "Dokumente werden zusammengeführt…"
    , linkItemsTitle = \n -> String.fromInt n ++ " Dokumente verknüpfen"
    , linkItemsMessage = "Die Liste muss mindestens 2 Dokumente haben. Das erste Dokument erhält alle folgenden als verknüpfte Dokumente."
    , submitLinkItems = "Verknüpfen"
    , submitLinkItemsTitle = ""
    , cancelLinkItemsTitle = ""
    , linkItemsSuccessful = "Das Verknüpfen war erfolgreich"
    , linkItemsInProcess = "Dokumente werden verknüpft ..."
    , mergeHeader = "Dokumente zusammenführen"
    , linkItemsHeader = "Dokument verknüpfen"
    , downloadAll = "Alle herunterladen"
    , downloadAllQueryNeeded = "Alles kann nicht heruntergeladen werden, es muss etwas gesucht werden."
    }


fr : TimeZone -> Texts
fr tz =
    { basics = Messages.Basics.fr
    , itemCardList = Messages.Comp.ItemCardList.fr tz
    , searchStatsView = Messages.Comp.SearchStatsView.fr
    , sideMenu = Messages.Page.SearchSideMenu.fr
    , itemMerge = Messages.Comp.ItemMerge.fr tz
    , publishItems = Messages.Comp.PublishItems.fr tz
    , bookmarkManage = Messages.Comp.BookmarkQueryManage.fr
    , downloadAllComp = Messages.Comp.DownloadAll.fr
        , contentSearch = "Поиск..."
    , searchInNames = "Поиск по имени..."
    , selectModeTitle = "Выбрать режим"
    , fullHeightPreviewTitle = "Предпросмотр на всю высоту"
    , fullWidthPreviewTitle = "Предпросмотр на всю ширину"
    , powerSearchPlaceholder = "Запрос..."
    , reallyReprocessQuestion = "Подтвердите переработку всех выбранных документов? Метаданные неподтвержденных документов могут измениться."
    , reallyDeleteQuestion = "Подтвердите удаление всех выбранных документов?"
    , reallyRestoreQuestion = "Восстановить все выбранные документы?"
    , editSelectedItems = \n -> "Редактировать " ++ String.fromInt n ++ " выбранных документов"
    , reprocessSelectedItems = \n -> "Переработать " ++ String.fromInt n ++ " выбранных документов"
    , deleteSelectedItems = \n -> "Удалить " ++ String.fromInt n ++ " выбранных документов"
    , undeleteSelectedItems = \n -> "Восстановить " ++ String.fromInt n ++ " выбранных документов"
    , selectAllVisible = "Выбрать все видимые"
    , selectNone = "Не выбирать ни одного"
    , resetSearchForm = "Сбросить форму поиска"
    , exitSelectMode = "Выйти из режима выбора"
    , mergeItemsTitle = \n -> "Объединить " ++ String.fromInt n ++ " выбранных документов"
    , publishItemsTitle = \n -> "Опубликовать " ++ String.fromInt n ++ " выбранных документов"
    , publishCurrentQueryTitle = "Опубликовать текущие результаты"
    , shareResults = "Поделиться результатами"
    , nothingSelectedToShare = "Поделиться невозможно. Необходимо задать критерии."
    , loadMore = "Загрузить ещё..."
    , thatsAll = "Это всё!"
    , showItemGroups = "Группировать по месяцам"
    , listView = "Список"
    , tileView = "Плитка"
    , expandCollapseRows = "Развернуть/Свернуть всё"
    , bookmarkQuery = "Запрос избранного"
    , nothingToBookmark = "Нечего добавлять в избранное"
    , submitMerge = "Объединить"
    , mergeInfoText = "При объединении первый документ становится целевым. Метаданные остальных документов добавляются к целевому. Если свойство имеет единственное значение (например, соответствие), оно добавляется, если ещё не присутствует. Теги, пользовательские поля и вложения добавляются. Документы можно перетаскивать для изменения порядка."
    , mergeDeleteWarn = "Учтите, что все документы будут удалены после успешного объединения!"
    , submitMergeTitle = "Запустить объединение"
    , cancelMergeTitle = "Отменить объединение"
    , mergeSuccessful = "Документы успешно объединены"
    , mergeInProcess = "Объединение в процессе ..."
    , linkItemsTitle = \n -> String.fromInt n ++ " Связать документы"
    , linkItemsMessage = "Список должен содержать как минимум два документа. Первый документ получит все последующие документы в качестве связанных."
    , submitLinkItems = "Связать"
    , submitLinkItemsTitle = ""
    , cancelLinkItemsTitle = ""
    , linkItemsSuccessful = "Связывание прошло успешно"
    , linkItemsInProcess = "Связывание в процессе ..."
    , mergeHeader = "Объединение документов"
    , linkItemsHeader = "Связать документы"
    , downloadAll = "Скачать все"
    , downloadAllQueryNeeded = "Невозможно скачать всё, нужно выполнить поиск."
    }