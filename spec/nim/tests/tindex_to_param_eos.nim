# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/index_to_param_eos

var
  stream = newFileStream("test_out/nim/junitreports/index_to_param_eos.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: IndexToParamEos":
    let r = IndexToParamEos.fromFile("src/index_sizes.bin")

    check(r.qty == 3)
    check(r.sizes[0] == 1)
    check(r.sizes[1] == 8)
    check(r.sizes[2] == 4)
    check(r.blocks[0].buf == "A")
    check(r.blocks[1].buf == "BBBBBBBB")
    check(r.blocks[2].buf == "CCCC")

close(outputFormatter)
