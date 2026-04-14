module IsbnVerifier

const HEADER = "USING: isbn-verifier tools.test ;"

function gen_test_case(case)
    isbn = case["input"]["isbn"]
    expected = case["expected"] ? "t" : "f"
    return """{ $(expected) } [ "$(isbn)" valid? ] unit-test"""
end

end
