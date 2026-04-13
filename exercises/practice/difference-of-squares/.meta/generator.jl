module DifferenceOfSquares

const HEADER = "USING: difference-of-squares tools.test ;"

const PROPERTIES = Dict(
    "squareOfSum" => "square-of-sum",
    "sumOfSquares" => "sum-of-squares",
    "differenceOfSquares" => "difference-of-squares",
)

function gen_test_case(case)
    number = case["input"]["number"]
    expected = case["expected"]
    word = PROPERTIES[case["property"]]
    return "{ $(expected) } [ $(number) $(word) ] unit-test"
end

end
