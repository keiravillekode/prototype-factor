module Connect

const HEADER = "USING: connect tools.test ;"

function gen_test_case(case)
    board = format_string_array(case["input"]["board"])
    expected = case["expected"]
    return """{ "$(expected)" } [ $(board) winner ] unit-test"""
end

end
