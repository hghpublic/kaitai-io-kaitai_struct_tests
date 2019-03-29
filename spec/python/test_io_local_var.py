# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest

from io_local_var import IoLocalVar

class TestIoLocalVar(unittest.TestCase):
    def test_io_local_var(self):
        with IoLocalVar.from_file('src/full256.bin') as r:
            self.assertEqual(r.skip, b"\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x0B\x0C\x0D\x0E\x0F\x10\x11\x12\x13")
            self.assertEqual(r.followup, 20)
