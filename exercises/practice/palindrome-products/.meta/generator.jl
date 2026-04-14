module PalindromeProducts

const HEADER = "USING: palindrome-products tools.test ;"

function format_factors(factors)
    pairs = map(f -> "{ $(Int(f[1])) $(Int(f[2])) }", factors)
    return "{ $(join(pairs, " ")) }"
end

function gen_test_case(case)
    mn = Int(case["input"]["min"])
    mx = Int(case["input"]["max"])
    prop = case["property"]
    expected = case["expected"]
    if expected isa Dict && haskey(expected, "error")
        msg = expected["error"]
        return """[ $(mn) $(mx) $(prop) ] [ "$(msg)" = ] must-fail-with"""
    else
        val = expected["value"]
        factors = expected["factors"]
        val_str = isnothing(val) ? "f" : string(Int(val))
        fac_str = format_factors(factors)
        return "{ { $(val_str) $(fac_str) } } [ $(mn) $(mx) $(prop) ] unit-test"
    end
end

end
