module Currying exposing (..)


multiply a b =
    a * b



-- higher order function, because it returns another function


mul10 : number -> number
mul10 =
    multiply 10
