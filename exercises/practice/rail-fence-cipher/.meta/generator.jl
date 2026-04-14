module RailFenceCipher

const HEADER = "USING: rail-fence-cipher tools.test ;"

function gen_test_case(case)
    msg = case["input"]["msg"]
    rails = Int(case["input"]["rails"])
    expected = case["expected"]
    prop = case["property"]
    return """{ "$(expected)" } [ "$(msg)" $(rails) $(prop) ] unit-test"""
end

end
