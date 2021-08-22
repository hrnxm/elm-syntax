module Expressions exposing (..)

import Types exposing (Color(..))


type Color
    = Red
    | Green
    | Blue
    | Unknown



-- if-then-else


isItRed : Color -> String
isItRed col =
    if col == Red then
        "Yes"

    else
        "Nope!"



-- chained


fib : Int -> Int
fib n =
    if n == 0 then
        0

    else if n == 1 then
        1

    else
        fib (n - 1) + fib (n - 2)



-- case-of


stringToColor : String -> Color
stringToColor strVal =
    case strVal of
        "Red" ->
            Red

        "Green" ->
            Green

        "Blue" ->
            Blue

        _ ->
            Unknown
