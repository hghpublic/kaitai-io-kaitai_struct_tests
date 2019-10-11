# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/params_pass_usertype

var
  stream = newFileStream("test_out/nim/junitreports/params_pass_usertype.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: ParamsPassUsertype":
    let r = ParamsPassUsertype.fromFile("src/position_in_seq.bin")

    check(r.first.foo == 1)
    check(r.one.buf == @[2])

close(outputFormatter)
