module PipingAndComposition exposing (..)


getFirstDigits : List Int -> List Int
getFirstDigits list =
    let
        stringList =
            List.map String.fromInt list

        firstStringDigits =
            List.map (String.left 1) stringList

        firstResultIntDigits =
            List.map String.toInt firstStringDigits

        firstIntDigits =
            List.map (Maybe.withDefault 0) firstResultIntDigits
    in
    firstIntDigits


getFirstDigits2 : List Int -> List Int
getFirstDigits2 list =
    list
        |> List.map String.fromInt
        |> List.map (String.left 1)
        |> List.map String.toInt
        |> List.map (Maybe.withDefault 0)


getFirstDigits3 : List Int -> List Int
getFirstDigits3 =
    List.map String.fromInt
        >> List.map (String.left 1)
        >> List.map String.toInt
        >> List.map (Maybe.withDefault 0)


getFirstDigits4 : List Int -> List Int
getFirstDigits4 =
    List.map
        (String.fromInt
            >> String.left 1
            >> String.toInt
            >> Maybe.withDefault 0
        )


getFirstDigits5 : List Int -> List Int
getFirstDigits5 =
    String.fromInt
        >> String.left 1
        >> String.toInt
        >> Maybe.withDefault 0
        |> List.map
