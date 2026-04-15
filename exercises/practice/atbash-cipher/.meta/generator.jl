module AtbashCipher

const HEADER = "USING: atbash-cipher tools.test ;"


function gen_test_case(case)
    phrase = escape_factor(case["input"]["phrase"])
    expected = escape_factor(case["expected"])
    prop = case["property"]
    return """{ "$(expected)" } [ "$(phrase)" $(prop) ] unit-test"""
end

end
