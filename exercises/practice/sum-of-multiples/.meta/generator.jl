module SumOfMultiples

const HEADER = "USING: sum-of-multiples tools.test ;"

function format_array(arr)
    return "{ $(join(map(x -> string(Int(x)), arr), " ")) }"
end

function gen_test_case(case)
    factors = format_array(case["input"]["factors"])
    limit = Int(case["input"]["limit"])
    expected = Int(case["expected"])
    return "{ $(expected) } [ $(factors) $(limit) sum-of-multiples ] unit-test"
end

end
