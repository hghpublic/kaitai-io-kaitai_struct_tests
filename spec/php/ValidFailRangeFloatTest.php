<?php
// Autogenerated from KST: please remove this line if doing any edits by hand!

namespace Kaitai\Struct\Tests;

class ValidFailRangeFloatTest extends TestCase {
    public function testValidFailRangeFloat() {
        $this->expectException(\Kaitai\Struct\Error\ValidationGreaterThanError::class);
        $r = ValidFailRangeFloat::fromFile(self::SRC_DIR_PATH . '/floating_points.bin');
    }
}
