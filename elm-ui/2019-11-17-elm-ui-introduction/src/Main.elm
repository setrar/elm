module Main exposing (..)

import Element exposing (Element, column, fill, fillPortion, height, layout, rgb255, row, text, width)
import Element.Background as Background
import Element.Font as Font
import Html exposing (Html)

channelPanel: Element msg
channelPanel =
    column
        [ height fill
        , width <| fillPortion 1
        , Background.color <| rgb255 92 99 118
        , Font.color <| rgb255 255 255 255
        ]
        [ text "channels"]

chatPanel : Element msg
chatPanel =
    column
        [ height fill, width <| fillPortion 5 ]
        [ text "chat" ]

main : Html msg
main =
    layout [] <|
        row [ height fill, width fill ]
            [ channelPanel
            , chatPanel
            ]