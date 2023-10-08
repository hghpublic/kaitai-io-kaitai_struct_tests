# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest

from enum_to_i import EnumToI

class TestEnumToI(unittest.TestCase):
    def test_enum_to_i(self):
        with EnumToI.from_file('src/enum_0.bin') as r:

            self.assertEqual(r.pet_1, EnumToI.Animal.cat)
            self.assertEqual(r.pet_2, EnumToI.Animal.chicken)
            self.assertEqual(r.pet_1_i, 7)
            self.assertEqual(r.pet_1_i_to_s, u"7")
            self.assertEqual(r.pet_1_mod, 32775)
            self.assertEqual(r.one_lt_two, True)
            self.assertEqual(r.pet_1_eq_int, True)
            self.assertEqual(r.pet_2_eq_int, False)
