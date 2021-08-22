module Types exposing (..)

import Array


intVal =
    5


floatVal =
    3.14


stringVal =
    "Whoa" ++ "!"


charVal =
    'o'


boolVal =
    True



-- data structures


tupleVal =
    ( 6, "nine" )


listVal =
    [ 9, 6, 3 ]


arrayVal =
    Array.fromList listVal


bob =
    { name = "Bob", age = 99, height = 1.6 }


higherBob =
    -- called an update but it's really not
    { bob | height = 2.1 }



-- original record is unchanged
-- Debug.log "Bob's height?" bob.height == 1.6
-- Debug.log "Higher Bob's height?" higherBob.height == 2.1
--
--
--
-- user-defined types


type Bool
    = True
    | False


type Color
    = Red
    | Green
    | Blue



-- aliasing


type alias Person =
    { name : String
    , age : Int
    , height : Float
    }
