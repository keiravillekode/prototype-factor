module Rectangles

const HEADER = "USING: rectangles tools.test ;"

function gen_test_case(case)
    strings = format_string_array(case["input"]["strings"])
    expected = Int(case["expected"])
    return "{ $(expected) } [ $(strings) count-rectangles ] unit-test"
end

end
