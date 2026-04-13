module Anagram

const HEADER = "USING: anagram tools.test ;"

function format_string_array(arr)
    if isempty(arr)
        return "{ }"
    end
    items = join(["\"$(s)\"" for s in arr], " ")
    return "{ $(items) }"
end

function gen_test_case(case)
    subject = case["input"]["subject"]
    candidates = case["input"]["candidates"]
    expected = case["expected"]
    cand_str = format_string_array(candidates)
    exp_str = format_string_array(expected)
    return """{ $(exp_str) } [ "$(subject)" $(cand_str) find-anagrams ] unit-test"""
end

end
