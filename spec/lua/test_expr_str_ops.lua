-- Autogenerated from KST: please remove this line if doing any edits by hand!

local luaunit = require("luaunit")

require("expr_str_ops")

TestExprStrOps = {}

function TestExprStrOps:test_expr_str_ops()
    local r = ExprStrOps:from_file("src/term_strz.bin")

    luaunit.assertEquals(r.one, "foo|b")
    luaunit.assertEquals(r.one_len, 5)
    luaunit.assertEquals(r.one_rev, "b|oof")
    luaunit.assertEquals(r.one_substr_0_to_3, "foo")
    luaunit.assertEquals(r.one_substr_2_to_5, "o|b")
    luaunit.assertEquals(r.one_substr_3_to_3, "")
    luaunit.assertEquals(r.one_substr_0_to_0, "")
    luaunit.assertEquals(r.two, "0123456789")
    luaunit.assertEquals(r.two_len, 10)
    luaunit.assertEquals(r.two_rev, "9876543210")
    luaunit.assertEquals(r.two_substr_0_to_7, "0123456")
    luaunit.assertEquals(r.two_substr_4_to_10, "456789")
    luaunit.assertEquals(r.two_substr_0_to_10, "0123456789")
    luaunit.assertEquals(r.to_i_attr, 9173)
    luaunit.assertEquals(r.to_i_r10, -72)
    luaunit.assertEquals(r.to_i_r2, 86)
    luaunit.assertEquals(r.to_i_r8, 465)
    luaunit.assertEquals(r.to_i_r16, 18383)
end
