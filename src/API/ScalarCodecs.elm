-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module API.ScalarCodecs exposing (..)

import API.Scalar exposing (defaultCodecs)
import Json.Decode as Decode exposing (Decoder)


type alias Id =
    API.Scalar.Id


type alias Time =
    API.Scalar.Time


codecs : API.Scalar.Codecs Id Time
codecs =
    API.Scalar.defineCodecs
        { codecId = defaultCodecs.codecId
        , codecTime = defaultCodecs.codecTime
        }