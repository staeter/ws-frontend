-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module API.Enum.Status exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-|

  - Statusless -
  - Failed -
  - NotStarted -
  - Running -
  - Ended -
  - Canceled -

-}
type Status
    = Statusless
    | Failed
    | NotStarted
    | Running
    | Ended
    | Canceled


list : List Status
list =
    [ Statusless, Failed, NotStarted, Running, Ended, Canceled ]


decoder : Decoder Status
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "STATUSLESS" ->
                        Decode.succeed Statusless

                    "FAILED" ->
                        Decode.succeed Failed

                    "NOT_STARTED" ->
                        Decode.succeed NotStarted

                    "RUNNING" ->
                        Decode.succeed Running

                    "ENDED" ->
                        Decode.succeed Ended

                    "CANCELED" ->
                        Decode.succeed Canceled

                    _ ->
                        Decode.fail ("Invalid Status type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : Status -> String
toString enum____ =
    case enum____ of
        Statusless ->
            "STATUSLESS"

        Failed ->
            "FAILED"

        NotStarted ->
            "NOT_STARTED"

        Running ->
            "RUNNING"

        Ended ->
            "ENDED"

        Canceled ->
            "CANCELED"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe Status
fromString enumString____ =
    case enumString____ of
        "STATUSLESS" ->
            Just Statusless

        "FAILED" ->
            Just Failed

        "NOT_STARTED" ->
            Just NotStarted

        "RUNNING" ->
            Just Running

        "ENDED" ->
            Just Ended

        "CANCELED" ->
            Just Canceled

        _ ->
            Nothing