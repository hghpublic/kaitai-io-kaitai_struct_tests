# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/default_endian_expr_is_le

var
  stream = newFileStream("test_out/nim/junitreports/default_endian_expr_is_le.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: DefaultEndianExprIsLe":
    let r = DefaultEndianExprIsLe.fromFile("src/endian_expr.bin")

    check(r.docs[0].indicator == @[73, 73])
    check(r.docs[0].main.someInt == 66)
    check(r.docs[0].main.someIntBe == 66)
    check(r.docs[0].main.someIntLe == 66)
    check(r.docs[1].indicator == @[77, 77])
    check(r.docs[1].main.someInt == 66)
    check(r.docs[1].main.someIntBe == 66)
    check(r.docs[1].main.someIntLe == 66)
    check(r.docs[2].indicator == @[88, 88])
    check(r.docs[2].main.someInt == 66)
    check(r.docs[2].main.someIntBe == 66)
    check(r.docs[2].main.someIntLe == 66)

close(outputFormatter)
