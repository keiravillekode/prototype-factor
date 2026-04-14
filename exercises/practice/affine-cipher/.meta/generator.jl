module AffineCipher

const HEADER = "USING: affine-cipher tools.test ;"

function escape_factor(s)
    s = replace(s, "\\" => "\\\\")
    s = replace(s, "\"" => "\\\"")
    return s
end

function gen_test_case(case)
    phrase = escape_factor(case["input"]["phrase"])
    a = Int(case["input"]["key"]["a"])
    b = Int(case["input"]["key"]["b"])
    prop = case["property"]
    expected = case["expected"]
    if expected isa Dict
        msg = expected["error"]
        return """[ "$(phrase)" $(a) $(b) $(prop) ] [ "$(msg)" = ] must-fail-with"""
    else
        return """{ "$(expected)" } [ "$(phrase)" $(a) $(b) $(prop) ] unit-test"""
    end
end

end
