module ListOps

const HEADER = "USING: list-ops tools.test ;"

# Map canonical property names to our Factor word names
const WORD_NAMES = Dict(
    "append" => "list-append",
    "concat" => "list-concat",
    "filter" => "select",
    "length" => "list-length",
    "map" => "collect",
    "foldl" => "foldl",
    "foldr" => "foldr",
    "reverse" => "list-reverse",
)

# Map pseudocode functions to Factor quotations
const FUNCTIONS = Dict(
    "(x) -> x modulo 2 == 1" => "[ odd? ]",
    "(x) -> x + 1" => "[ 1 + ]",
    "(acc, el) -> el * acc" => "[ * ]",
    "(acc, el) -> el + acc" => "[ + ]",
    "(acc, el) -> el / acc" => "[ swap / ]",
)

function format_array(arr)
    if isempty(arr)
        return "{ }"
    end
    parts = map(arr) do x
        if x isa AbstractVector
            format_array(x)
        else
            string(Int(x))
        end
    end
    return "{ $(join(parts, " ")) }"
end

function gen_test_case(case)
    prop = case["property"]
    word = WORD_NAMES[prop]
    expected = case["expected"]

    if prop == "append"
        l1 = format_array(case["input"]["list1"])
        l2 = format_array(case["input"]["list2"])
        exp = format_array(expected)
        return "{ $(exp) } [ $(l1) $(l2) $(word) ] unit-test"

    elseif prop == "concat"
        lists = format_array(case["input"]["lists"])
        exp = format_array(expected)
        return "{ $(exp) } [ $(lists) $(word) ] unit-test"

    elseif prop in ("filter", "map")
        list = format_array(case["input"]["list"])
        func = FUNCTIONS[case["input"]["function"]]
        exp = format_array(expected)
        return "{ $(exp) } [ $(list) $(func) $(word) ] unit-test"

    elseif prop in ("foldl", "foldr")
        list = format_array(case["input"]["list"])
        initial = case["input"]["initial"]
        init_str = initial isa AbstractFloat ? string(BigInt(round(initial))) : string(Int(initial))
        func = FUNCTIONS[case["input"]["function"]]
        exp = expected isa AbstractFloat ? string(BigInt(round(expected))) : string(Int(expected))
        return "{ $(exp) } [ $(list) $(init_str) $(func) $(word) ] unit-test"

    elseif prop == "length"
        list = format_array(case["input"]["list"])
        return "{ $(Int(expected)) } [ $(list) $(word) ] unit-test"

    elseif prop == "reverse"
        list = format_array(case["input"]["list"])
        exp = format_array(expected)
        return "{ $(exp) } [ $(list) $(word) ] unit-test"
    end
end

end
