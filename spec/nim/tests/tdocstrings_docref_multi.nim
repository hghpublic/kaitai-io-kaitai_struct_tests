# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/docstrings_docref_multi

var
  stream = newFileStream("test_out/nim/junitreports/docstrings_docref_multi.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: DocstringsDocrefMulti":
    let r = DocstringsDocrefMulti.fromFile("src/fixed_struct.bin")


close(outputFormatter)
