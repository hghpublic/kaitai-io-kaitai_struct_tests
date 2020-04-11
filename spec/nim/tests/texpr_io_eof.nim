# Autogenerated from KST: please remove this line if doing any edits by hand!

import os, streams, options, sequtils, unittest
import ../../../compiled/nim/expr_io_eof
import ../test_utils

let r = ExprIoEof.fromFile("src/fixed_struct.bin")

test "ExprIoEof":

  check(r.substream1.one == uint32(1262698832))
  check(r.substream1.two == 0'u32)
  check(r.substream2.one == uint32(4294914349'u64))
  check(r.substream2.two == uint32(1262698832))
  discard
