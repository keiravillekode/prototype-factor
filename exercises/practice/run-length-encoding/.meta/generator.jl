module RunLengthEncoding

const HEADER = "USING: run-length-encoding tools.test ;"

function gen_test_case(case)
    str = case["input"]["string"]
    expected = case["expected"]
    prop = case["property"]
    if prop == "consistency"
        return """{ "$(expected)" } [ "$(str)" encode decode ] unit-test"""
    else
        return """{ "$(expected)" } [ "$(str)" $(prop) ] unit-test"""
    end
end

end
