module NthPrime

const HEADER = "USING: nth-prime tools.test ;"

function gen_test_case(case)
    number = Int(case["input"]["number"])
    expected = case["expected"]
    if expected isa Dict
        msg = expected["error"]
        return """[ $(number) nth-prime ] [ "$(msg)" = ] must-fail-with"""
    else
        return "{ $(Int(expected)) } [ $(number) nth-prime ] unit-test"
    end
end

end
