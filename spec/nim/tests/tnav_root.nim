# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/nav_root

var
  stream = newFileStream("test_out/nim/junitreports/nav_root.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: NavRoot":
    let r = NavRoot.fromFile("src/nav.bin")

    check(r.header.qtyEntries == 2)
    check(r.header.filenameLen == 8)
    check(len(r.index.entries) == 2)
    check(r.index.entries[0].filename == "FIRST___")
    check(r.index.entries[1].filename == "SECOND__")

close(outputFormatter)
