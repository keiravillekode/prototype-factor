module Anagram

const HEADER = "USING: anagram tools.test ;"

function gen_test_case(case)
    subject = case["input"]["subject"]
    candidates = format_string_vector(case["input"]["candidates"])
    expected = format_string_vector(case["expected"])
    return """{ $(expected) } [ "$(subject)" $(candidates) find-anagrams ] unit-test"""
end

end
