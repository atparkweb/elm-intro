module Main exposing (..)

import Browser
import Element exposing (..)
import Element.Border as Border
import Element.Input as Input
import Html

type Msg
    = Increase
    | Decrease

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
            , Input.button 
                [Border.width 1
                , padding 10
                , Border.rounded 10
                ]
                { label = text "-1", onPress = Just Decrease }
            ]

update : Msg -> Int -> Int
update msg model =
    case msg of
        Increase ->
            model + 1
    
        Decrease ->
            model - 1

main : Program () Int Msg
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