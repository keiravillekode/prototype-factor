module WordCount

const HEADER = "USING: word-count tools.test ;"

function escape_factor(s)
    s = replace(s, "\\" => "\\\\")
    s = replace(s, "\"" => "\\\"")
    s = replace(s, "\n" => "\\n")
    s = replace(s, "\t" => "\\t")
    return s
end

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
