# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest
from eof_exception_sized import EofExceptionSized
import kaitaistruct

class TestEofExceptionSized(unittest.TestCase):
    def test_eof_exception_sized(self):
        with self.assertRaises(EOFError) as cm:
            with EofExceptionSized.from_file('src/term_strz.bin') as r:
                pass
        self.assertEqual(str(cm.exception), u"requested 13 bytes, but only 12 bytes available")
