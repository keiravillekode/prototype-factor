module PerfectNumbers

const HEADER = "USING: perfect-numbers tools.test ;"

function gen_test_case(case)
    number = Int(case["input"]["number"])
    expected = case["expected"]
    if expected isa Dict
        msg = expected["error"]
        return """[ $(number) classify ] [ "$(msg)" = ] must-fail-with"""
    else
        return """{ "$(expected)" } [ $(number) classify ] unit-test"""
    end
end

end
