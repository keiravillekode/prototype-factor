module Alphametics

const HEADER = "USING: alphametics tools.test ;"

function substitute(puzzle, mapping)
    result = collect(puzzle)
    for (i, ch) in enumerate(result)
        if haskey(mapping, string(ch))
            result[i] = Char('0' + mapping[string(ch)])
        end
    end
    return String(result)
end

function gen_test_case(case)
    puzzle = case["input"]["puzzle"]
    expected = case["expected"]
    if isnothing(expected)
        return """{ f } [ "$(puzzle)" solve ] unit-test"""
    else
        substituted = substitute(puzzle, expected)
        return """{ "$(substituted)" } [ "$(puzzle)" solve ] unit-test"""
    end
end

end
