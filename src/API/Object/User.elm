-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module API.Object.User exposing (..)

import API.InputObject
import API.Interface
import API.Object
import API.Scalar
import API.ScalarCodecs
import API.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| -}
id : SelectionSet API.ScalarCodecs.Id API.Object.User
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (API.ScalarCodecs.codecs |> API.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| -}
admin : SelectionSet Bool API.Object.User
admin =
    Object.selectionForField "Bool" "admin" [] Decode.bool


{-| -}
email : SelectionSet String API.Object.User
email =
    Object.selectionForField "String" "email" [] Decode.string


{-| -}
created_at : SelectionSet API.ScalarCodecs.Time API.Object.User
created_at =
    Object.selectionForField "ScalarCodecs.Time" "created_at" [] (API.ScalarCodecs.codecs |> API.Scalar.unwrapCodecs |> .codecTime |> .decoder)
