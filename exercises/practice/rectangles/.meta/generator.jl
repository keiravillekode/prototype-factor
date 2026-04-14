module Rectangles

const HEADER = "USING: rectangles tools.test ;"

function format_strings(strings)
    parts = map(s -> "\"$(s)\"", strings)
    return "{ $(join(parts, " ")) }"
end

function gen_test_case(case)
    strings = format_strings(case["input"]["strings"])
    expected = Int(case["expected"])
    return "{ $(expected) } [ $(strings) count-rectangles ] unit-test"
end

end
