module AdvancedTypes exposing (..)

-- 5.3    function : Float
-- Red    function : Color
-- RGB    function : Int -> Int -> Int -> Color
-- type values are constructor functions


type Color
    = Red
    | Green
    | Blue
    | RGB Int Int Int



-- aliased type names also behave like constructors


type alias Employee =
    { name : String, surname : String, age : Int, salary : Float }


john : Employee
john =
    { name = "Jon"
    , surname = "Bon"
    , age = 59
    , salary = 40000000
    }


jack : Employee
jack =
    -- watch out for the parameter order
    Employee "Jack" "Back" 25 3000



-- recursive union types


type TreeNode
    = TreeNode
        { content : String
        , childNodes : List TreeNode
        }



-- generics


type Optional val
    = Null
    | Value val


firstOrZero : List Int -> Int
firstOrZero list =
    Maybe.withDefault 0 (List.head list)



-- alternative


firstOrZero2 : List Int -> Int
firstOrZero2 list =
    case List.head list of
        Just first ->
            first

        Nothing ->
            0


isEven : Maybe Int -> Maybe Bool
isEven number =
    Maybe.map (\num -> modBy 2 num == 0) number



-- extensible records


type Validation
    = Valid
    | Error String


type alias InputField =
    { content : String
    , validation : Validation
    }


type alias Checkbox =
    { checked : Bool
    , validation : Validation
    }


isElementValid : { elem | validation : Validation } -> Bool
isElementValid elem =
    case elem.validation of
        Valid ->
            True

        Error msg ->
            False



-- alternatives


isElementValid2 : { elem | validation : Validation } -> Bool
isElementValid2 { validation } =
    case validation of
        Valid ->
            True

        Error _ ->
            False


isElementValid3 : { elem | validation : Validation } -> Bool
isElementValid3 { validation } =
    validation == Valid


setErrMsg : String -> { el | validation : Validation } -> { el | validation : Validation }
setErrMsg msg elem =
    { elem | validation = Error msg }
