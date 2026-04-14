module MatchingBrackets

const HEADER = "USING: matching-brackets tools.test ;"

function escape_factor(s)
    s = replace(s, "\\" => "\\\\")
    s = replace(s, "\"" => "\\\"")
    return s
end

function gen_test_case(case)
    value = escape_factor(case["input"]["value"])
    expected = case["expected"] ? "t" : "f"
    return """{ $(expected) } [ "$(value)" paired? ] unit-test"""
end

end
