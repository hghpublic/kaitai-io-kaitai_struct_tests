# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest

from expr_io_ternary import _schema

class TestExprIoTernary(unittest.TestCase):
    def test_expr_io_ternary(self):
        r = _schema.parse_file('src/term_strz.bin')

        self.assertEqual(r.one_or_two_io_size1, 8)
        self.assertEqual(r.one_or_two_io_size2, 8)
        self.assertEqual(r.one_or_two_io_size_add_3, 11)
