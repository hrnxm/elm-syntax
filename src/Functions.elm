module Functions exposing (..)

-- declaration (can be ommited, but it's discouraged)


add : Int -> Int -> Int



-- definition


add x y =
    x + y



-- function that takes no arguments, and returns a Float


pi =
    3.14


added =
    add 9 6



-- 'let ... in' binding


addAndStringify : Int -> Int -> String
addAndStringify x y =
    let
        added =
            x + y

        stringified =
            String.fromInt added
    in
    stringified


lambda =
    \arg1 argN -> arg1 + argN



-- higher order functions
-- 'map' from 'List' module is the most used


appendHey : List String -> List String
appendHey list =
    List.map (\str -> str ++ " hey") list



-- recognized by parentheses in function signature


applyTwice : (String -> String) -> String -> String
applyTwice func str =
    func (func str)
