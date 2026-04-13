module Bob

const HEADER = "USING: bob tools.test ;"

function escape_factor(s)
    s = replace(s, "\\" => "\\\\")
    s = replace(s, "\"" => "\\\"")
    s = replace(s, "\t" => "\\t")
    s = replace(s, "\n" => "\\n")
    s = replace(s, "\r" => "\\r")
    return s
end

function gen_test_case(case)
    input = escape_factor(case["input"]["heyBob"])
    expected = case["expected"]
    return """{ "$(expected)" } [ "$(input)" response ] unit-test"""
end

end
