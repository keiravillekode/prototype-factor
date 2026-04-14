module RotationalCipher

const HEADER = "USING: rotational-cipher tools.test ;"

function escape_factor(s)
    s = replace(s, "\\" => "\\\\")
    s = replace(s, "\"" => "\\\"")
    return s
end

function gen_test_case(case)
    text = escape_factor(case["input"]["text"])
    key = Int(case["input"]["shiftKey"])
    expected = escape_factor(case["expected"])
    return """{ "$(expected)" } [ "$(text)" $(key) rotate ] unit-test"""
end

end
