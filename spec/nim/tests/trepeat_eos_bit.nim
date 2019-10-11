# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/repeat_eos_bit

var
  stream = newFileStream("test_out/nim/junitreports/repeat_eos_bit.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: RepeatEosBit":
    let r = RepeatEosBit.fromFile("src/enum_0.bin")

    check(len(r.nibbles) == 16)

close(outputFormatter)
