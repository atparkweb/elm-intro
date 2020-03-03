module Main exposing (..)

import Browser
import Element exposing (..)
import Element.Border as Border
import Element.Input as Input
import Html

view model =
    layout [] <|
        column []
            [ el [] <| text "Hi"
            , text "Hallo"
            , text <| String.fromInt model
            , Input.button 
                [Border.width 1
                , padding 10
                , Border.rounded 10
                ]
                { label = text "+1", onPress = Just Increase }
            ]

update: a -> b -> number
update msg model =
    3

main : Program () Int msg
main =
    Browser.sandbox
    { init = 0
    , view = view
    , update = update
    }

-- f <| g <| d <| 3 = f ( g ( d 3 ) )

sum : number -> number -> number
sum a b =
    a + b