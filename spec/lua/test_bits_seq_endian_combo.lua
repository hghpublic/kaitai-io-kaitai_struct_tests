-- Autogenerated from KST: please remove this line if doing any edits by hand!

local luaunit = require("luaunit")

require("bits_seq_endian_combo")

TestBitsSeqEndianCombo = {}

function TestBitsSeqEndianCombo:test_bits_seq_endian_combo()
    local r = BitsSeqEndianCombo:from_file("src/process_xor_4.bin")

    luaunit.assertEquals(r.be1, 59)
    luaunit.assertEquals(r.be2, 187)
    luaunit.assertEquals(r.le3, 163)
    luaunit.assertEquals(r.be4, 20)
    luaunit.assertEquals(r.le5, 10)
    luaunit.assertEquals(r.le6, 36)
    luaunit.assertEquals(r.le7, 26)
    luaunit.assertEquals(r.be8, true)
end
