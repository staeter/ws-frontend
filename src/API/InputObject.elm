-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module API.InputObject exposing (..)

import API.Interface
import API.Object
import API.Scalar
import API.ScalarCodecs
import API.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


buildNewTask :
    NewTaskRequiredFields
    -> (NewTaskOptionalFields -> NewTaskOptionalFields)
    -> NewTask
buildNewTask required____ fillOptionals____ =
    let
        optionals____ =
            fillOptionals____
                { dataset = Absent, env = Absent }
    in
    { docker_image = required____.docker_image, dataset = optionals____.dataset, env = optionals____.env }


type alias NewTaskRequiredFields =
    { docker_image : String }


type alias NewTaskOptionalFields =
    { dataset : OptionalArgument String
    , env : OptionalArgument (List String)
    }


{-| Type for the NewTask input object.
-}
type alias NewTask =
    { docker_image : String
    , dataset : OptionalArgument String
    , env : OptionalArgument (List String)
    }


{-| Encode a NewTask into a value that can be used as an argument.
-}
encodeNewTask : NewTask -> Value
encodeNewTask input____ =
    Encode.maybeObject
        [ ( "docker_image", Encode.string input____.docker_image |> Just ), ( "dataset", Encode.string |> Encode.optional input____.dataset ), ( "env", (Encode.string |> Encode.list) |> Encode.optional input____.env ) ]


buildNewUser :
    NewUserRequiredFields
    -> NewUser
buildNewUser required____ =
    { email = required____.email, password = required____.password }


type alias NewUserRequiredFields =
    { email : String
    , password : String
    }


{-| Type for the NewUser input object.
-}
type alias NewUser =
    { email : String
    , password : String
    }


{-| Encode a NewUser into a value that can be used as an argument.
-}
encodeNewUser : NewUser -> Value
encodeNewUser input____ =
    Encode.maybeObject
        [ ( "email", Encode.string input____.email |> Just ), ( "password", Encode.string input____.password |> Just ) ]
