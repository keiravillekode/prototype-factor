module Sieve

const HEADER = "USING: sieve tools.test ;"

function format_array(arr)
    return "V{ $(join(map(x -> string(Int(x)), arr), " ")) }"
end

function gen_test_case(case)
    limit = Int(case["input"]["limit"])
    expected = format_array(case["expected"])
    return "{ $(expected) } [ $(limit) primes ] unit-test"
end

end
