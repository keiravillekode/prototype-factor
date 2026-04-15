module WordCount

const HEADER = "USING: word-count tools.test ;"


function format_expected(expected)
    pairs = map(sort(collect(expected), by=first)) do (k, v)
        "{ \"$(k)\" $(Int(v)) }"
    end
    return "H{ $(join(pairs, " ")) }"
end

function gen_test_case(case)
    sentence = escape_factor(case["input"]["sentence"])
    expected = format_expected(case["expected"])
    return """{ $(expected) } [ "$(sentence)" count-words ] unit-test"""
end

end
