{-
   Copyright 2020 Eike K. & Contributors

   SPDX-License-Identifier: AGPL-3.0-or-later
-}


module Messages.Page.DefaultDashboard exposing (Texts, de, fr, gb)

import Messages.Basics


type alias Texts =
    { basics : Messages.Basics.Texts
    , default : String
    , welcomeName : String
    , welcomeTitle : String
    , welcomeBody : String
    , summaryName : String
    , dueInDays : Int -> String
    , newDocsName : String
    }


gb : Texts
gb =
    { basics = Messages.Basics.gb
    , default = "Default"
    , welcomeName = "Welcome Message"
    , welcomeTitle = "# Welcome to Docspell"
    , welcomeBody = "Docspell keeps your documents organized."
    , summaryName = "Summary"
    , dueInDays = \n -> "Due in " ++ String.fromInt n ++ " days"
    , newDocsName = "New Documents"
    }


de : Texts
de =
    { basics = Messages.Basics.de
    , default = "Standard"
    , welcomeName = "Willkommens-Nachricht"
    , welcomeTitle = "# Willkommen zu Docspell"
    , welcomeBody = "Docspell behält die Übersicht über deine Dokumene."
    , summaryName = "Zahlen"
    , dueInDays = \n -> "Fällig in " ++ String.fromInt n ++ " Tagen"
    , newDocsName = "Neue Dokumente"
    }


fr : Texts
fr =
    { basics = Messages.Basics.fr
    , default = "По умолчанию"
    , welcomeName = "Приветственное сообщение"
    , welcomeTitle = "# Добро пожаловать в Docspell"
    , welcomeBody = "Docspell помогает вам организовать документы"
    , summaryName = "Резюме"
    , dueInDays = \n -> "Срок через " ++ String.fromInt n ++ " дней"
    , newDocsName = "Новые документы"
    }
