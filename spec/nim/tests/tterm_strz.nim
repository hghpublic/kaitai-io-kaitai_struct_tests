# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/term_strz

var
  stream = newFileStream("test_out/nim/junitreports/term_strz.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: TermStrz":
    let r = TermStrz.fromFile("src/term_strz.bin")

    check(r.s1 == "foo")
    check(r.s2 == "bar")
    check(r.s3 == "|baz@")

close(outputFormatter)
