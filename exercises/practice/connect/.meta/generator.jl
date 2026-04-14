module Connect

const HEADER = "USING: connect tools.test ;"

function format_board(board)
    parts = map(s -> "\"$(s)\"", board)
    return "{ $(join(parts, " ")) }"
end

function gen_test_case(case)
    board = format_board(case["input"]["board"])
    expected = case["expected"]
    return """{ "$(expected)" } [ $(board) winner ] unit-test"""
end

end
