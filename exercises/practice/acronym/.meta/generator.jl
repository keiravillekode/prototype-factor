module Acronym

const HEADER = "USING: acronym tools.test ;"

function escape_factor(s)
    s = replace(s, "\\" => "\\\\")
    s = replace(s, "\"" => "\\\"")
    return s
end

function gen_test_case(case)
    phrase = escape_factor(case["input"]["phrase"])
    expected = case["expected"]
    return """{ "$(expected)" } [ "$(phrase)" abbreviate ] unit-test"""
end

end
