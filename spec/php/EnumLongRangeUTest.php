<?php
// Autogenerated from KST: please remove this line if doing any edits by hand!

namespace Kaitai\Struct\Tests;

class EnumLongRangeUTest extends TestCase {
    public function testEnumLongRangeU() {
        $r = EnumLongRangeU::fromFile(self::SRC_DIR_PATH . '/enum_long_range_u.bin');

        $this->assertEquals(\Kaitai\Struct\Tests\EnumLongRangeU\Constants::ZERO, $r->f1());
        $this->assertEquals(\Kaitai\Struct\Tests\EnumLongRangeU\Constants::INT_MAX, $r->f2());
        $this->assertEquals(\Kaitai\Struct\Tests\EnumLongRangeU\Constants::INT_OVER_MAX, $r->f3());
        $this->assertEquals(\Kaitai\Struct\Tests\EnumLongRangeU\Constants::LONG_MAX, $r->f4());
    }
}
