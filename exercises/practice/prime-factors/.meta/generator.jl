module PrimeFactors

const HEADER = "USING: prime-factors tools.test ;"



function gen_test_case(case)
    value = to_int_str(case["input"]["value"])
    expected = format_int_array(case["expected"])
    return "{ $(expected) } [ $(value) factors ] unit-test"
end

end
