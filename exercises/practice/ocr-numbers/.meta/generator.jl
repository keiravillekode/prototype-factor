module OcrNumbers

const HEADER = "USING: ocr-numbers tools.test ;"

function gen_test_case(case)
    rows = format_string_array(case["input"]["rows"])
    expected = case["expected"]
    if expected isa Dict
        msg = expected["error"]
        return """[ $(rows) convert ] [ "$(msg)" = ] must-fail-with"""
    else
        return """{ "$(expected)" } [ $(rows) convert ] unit-test"""
    end
end

end
