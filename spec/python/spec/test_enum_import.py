import unittest

from enum_import import EnumImport
from enum_0 import Enum0
from enum_deep import EnumDeep

class TestEnumImport(unittest.TestCase):
    def test_enum_import(self):
        with EnumImport.from_file('src/enum_0.bin') as r:

            self.assertEqual(r.pet_1, Enum0.Animal.cat)
            self.assertEqual(r.pet_2, EnumDeep.Container1.Container2.Animal.hare)
