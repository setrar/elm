module PhotoGrooveTests exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Json.Decode exposing (decodeString, decodeValue)
import Json.Encode as Encode
import Test exposing (..)

import PhotoGroove


suite : Test
suite =
    test "one plus one equals two" (\_ -> Expect.equal 2 (1 + 1))

decoderTest : Test
decoderTest =
    test "title defaults to (untitled)"
        (\_ ->
            "{\"url\": \"fruits.com\", \"size\": 5 }"
            |> decodeString PhotoGroove.photoDecoder
            |> Expect.equal
                (Ok { url = "fruits.com", size = 5, title = "(untitled)"} )
        )

yetDecoderTest : Test
yetDecoderTest =
    test "title is Ginger" <|
        \_ ->
            "{\"url\": \"fruits.com\", \"size\": 5, \"title\" : \"Ginger\" }"
            |> decodeString PhotoGroove.photoDecoder
            |> Expect.equal (Ok { url = "fruits.com", size = 5, title = "Ginger"} )


yetAgainDecoderTest : Test
yetAgainDecoderTest =
    test "title is My Movie" <|
        \_ ->
        --- 3 double quotes object
            """{"url": "fruits.com", "size": 5, "title" : "My Movie" }"""
                |> decodeString PhotoGroove.photoDecoder
                |> Result.map (\photo -> photo.title)
                |> Expect.equal (Ok "My Movie" )

yetAgainAnotherDecoderTest : Test
yetAgainAnotherDecoderTest =
    test "title is My Movie2" <|
        \_ ->
            """{"url": "fruits.com", "size": 5, "title" : "My Movie2" }"""
                |> decodeString PhotoGroove.photoDecoder
                --- Syntactic Sugar
                |> Result.map .title
                |> Expect.equal (Ok "My Movie2" )

decoderEncodedTest : Test
decoderEncodedTest =
    test "title defaults to (untitled) given without JSON Object" <|
        \_ ->
            [ ( "url", Encode.string "fruits.com" )
            , ( "size", Encode.int 5 )
            ]
            |> Encode.object
            |> decodeValue PhotoGroove.photoDecoder
            |> Result.map .title
            |> Expect.equal (Ok "(untitled)" )

-- TODO more to fichish