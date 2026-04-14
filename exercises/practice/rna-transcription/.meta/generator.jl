module RnaTranscription

const HEADER = "USING: rna-transcription tools.test ;"

function gen_test_case(case)
    dna = case["input"]["dna"]
    expected = case["expected"]
    return """{ "$(expected)" } [ "$(dna)" to-rna ] unit-test"""
end

end
