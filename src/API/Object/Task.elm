-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module API.Object.Task exposing (..)

import API.Enum.Status
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
id : SelectionSet API.ScalarCodecs.Id API.Object.Task
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (API.ScalarCodecs.codecs |> API.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| -}
user_id : SelectionSet String API.Object.Task
user_id =
    Object.selectionForField "String" "user_id" [] Decode.string


{-| -}
created_at : SelectionSet API.ScalarCodecs.Time API.Object.Task
created_at =
    Object.selectionForField "ScalarCodecs.Time" "created_at" [] (API.ScalarCodecs.codecs |> API.Scalar.unwrapCodecs |> .codecTime |> .decoder)


{-| -}
started_at : SelectionSet API.ScalarCodecs.Time API.Object.Task
started_at =
    Object.selectionForField "ScalarCodecs.Time" "started_at" [] (API.ScalarCodecs.codecs |> API.Scalar.unwrapCodecs |> .codecTime |> .decoder)


{-| -}
ended_at : SelectionSet API.ScalarCodecs.Time API.Object.Task
ended_at =
    Object.selectionForField "ScalarCodecs.Time" "ended_at" [] (API.ScalarCodecs.codecs |> API.Scalar.unwrapCodecs |> .codecTime |> .decoder)


{-| -}
status : SelectionSet API.Enum.Status.Status API.Object.Task
status =
    Object.selectionForField "Enum.Status.Status" "status" [] API.Enum.Status.decoder


{-| -}
job :
    SelectionSet decodesTo API.Object.Job
    -> SelectionSet decodesTo API.Object.Task
job object____ =
    Object.selectionForCompositeField "job" [] object____ Basics.identity
