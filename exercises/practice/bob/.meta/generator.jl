module Bob

const HEADER = "USING: bob tools.test ;"


function gen_test_case(case)
    input = escape_factor(case["input"]["heyBob"])
    expected = case["expected"]
    return """{ "$(expected)" } [ "$(input)" response ] unit-test"""
end

end
