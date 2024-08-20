{-
   Copyright 2020 Eike K. & Contributors

   SPDX-License-Identifier: AGPL-3.0-or-later
-}


module Messages.Page.Register exposing
    ( Texts
    , de
    , fr
    , gb
    )

import Http
import Messages.Basics
import Messages.Comp.HttpError


type alias Texts =
    { basics : Messages.Basics.Texts
    , httpError : Http.Error -> String
    , signupToDocspell : String
    , collectiveId : String
    , collective : String
    , userLogin : String
    , username : String
    , password : String
    , passwordRepeat : String
    , invitationKey : String
    , alreadySignedUp : String
    , signIn : String
    , registrationSuccessful : String
    , passwordsDontMatch : String
    , allFieldsRequired : String
    }


gb : Texts
gb =
    { basics = Messages.Basics.gb
    , httpError = Messages.Comp.HttpError.gb
    , signupToDocspell = "Signup to Docspell"
    , collectiveId = "Collective ID"
    , collective = "Collective"
    , userLogin = "User Login"
    , username = "Username"
    , password = "Password"
    , passwordRepeat = "Password (repeat)"
    , invitationKey = "Invitation Key"
    , alreadySignedUp = "Already signed up?"
    , signIn = "Sign in"
    , registrationSuccessful = "Registration successful."
    , passwordsDontMatch = "The passwords do not match."
    , allFieldsRequired = "All fields are required!"
    }


de : Texts
de =
    { basics = Messages.Basics.de
    , httpError = Messages.Comp.HttpError.de
    , signupToDocspell = "Registrierung bei Docspell"
    , collectiveId = "Kollektiv"
    , collective = "Kollektiv"
    , userLogin = "Benutzername"
    , username = "Benutzername"
    , password = "Passwort"
    , passwordRepeat = "Passwort (Wiederholung)"
    , invitationKey = "Einladungs-ID"
    , alreadySignedUp = "Bereits registriert?"
    , signIn = "Anmelden"
    , registrationSuccessful = "Registratierung erfolgreich."
    , passwordsDontMatch = "Die Passwörten stimmen nicht überein."
    , allFieldsRequired = "Alle Felder müssen ausgefüllt werden!"
    }


fr : Texts
fr =
    { basics = Messages.Basics.fr
    , httpError = Messages.Comp.HttpError.fr
    , signupToDocspell = "Зарегистрироваться в Docspell"
    , collectiveId = "ID Группы"
    , collective = "Группа"
    , userLogin = "Логин пользователя"
    , username = "Имя пользователя"
    , password = "Пароль"
    , passwordRepeat = "Пароль (подтверждение)"
    , invitationKey = "Ключ приглашения"
    , alreadySignedUp = "Уже зарегистрированы?"
    , signIn = "Войти"
    , registrationSuccessful = "Регистрация завершена."
    , passwordsDontMatch = "Пароли не совпадают."
    , allFieldsRequired = "Все поля обязательны для заполнения!"
    }
