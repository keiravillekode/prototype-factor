module Sieve

const HEADER = "USING: sieve tools.test ;"

function gen_test_case(case)
    limit = Int(case["input"]["limit"])
    expected = format_int_vector(case["expected"])
    return "{ $(expected) } [ $(limit) primes ] unit-test"
end

end
