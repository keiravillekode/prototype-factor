module CryptoSquare

const HEADER = "USING: crypto-square tools.test ;"


function gen_test_case(case)
    plaintext = escape_factor(case["input"]["plaintext"])
    expected = escape_factor(case["expected"])
    return """{ "$(expected)" } [ "$(plaintext)" ciphertext ] unit-test"""
end

end
