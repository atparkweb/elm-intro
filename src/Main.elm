module Main exposing (..)

import Html exposing (..)
import Html.Attributes


main : Html.Html msg
main =
    div []
        [ h1 [] [ text "Hi" ]
        , text "Hallo"
        , a [Html.Attributes.href "fsfd"] [text "link"]
        , node "myelement" [] [text "my element"]
        ]

sum : number -> number -> number
sum a b =
    a + b