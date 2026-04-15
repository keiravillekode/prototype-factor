module PrimeFactors

const HEADER = "USING: prime-factors tools.test ;"

function format_array(arr)
    return "{ $(join(map(x -> string(Int(x)), arr), " ")) }"
end

function to_int_str(n)
    n isa AbstractFloat ? string(BigInt(round(n))) : string(Int(n))
end

function gen_test_case(case)
    value = to_int_str(case["input"]["value"])
    expected = format_array(case["expected"])
    return "{ $(expected) } [ $(value) factors ] unit-test"
end

end
