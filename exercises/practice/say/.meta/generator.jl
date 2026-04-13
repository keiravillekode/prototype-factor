module Say

const HEADER = "USING: say tools.test ;"

function gen_test_case(case)
    number = case["input"]["number"]
    expected = case["expected"]
    if expected isa Dict
        msg = expected["error"]
        return """[ $(number) say ] [ "$(msg)" = ] must-fail-with"""
    else
        return """{ "$(expected)" } [ $(number) say ] unit-test"""
    end
end

end
