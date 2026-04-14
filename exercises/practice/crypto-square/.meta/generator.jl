module CryptoSquare

const HEADER = "USING: crypto-square tools.test ;"

function escape_factor(s)
    s = replace(s, "\\" => "\\\\")
    s = replace(s, "\"" => "\\\"")
    return s
end

function gen_test_case(case)
    plaintext = escape_factor(case["input"]["plaintext"])
    expected = escape_factor(case["expected"])
    return """{ "$(expected)" } [ "$(plaintext)" ciphertext ] unit-test"""
end

end
