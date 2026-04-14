module LineUp

const HEADER = "USING: line-up tools.test ;"

function gen_test_case(case)
    name = case["input"]["name"]
    number = Int(case["input"]["number"])
    expected = case["expected"]
    return """{ "$(expected)" } [ "$(name)" $(number) format ] unit-test"""
end

end
