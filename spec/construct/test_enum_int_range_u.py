# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest
from enum_int_range_u import _schema

class TestEnumIntRangeU(unittest.TestCase):
    def test_enum_int_range_u(self):
        r = _schema.parse_file('src/enum_int_range_u.bin')

        self.assertEqual(r.f1, 'zero')
        self.assertEqual(r.f2, 'int_max')
