<?php
// Autogenerated from KST: please remove this line if doing any edits by hand!

namespace Kaitai\Struct\Tests;

class EofExceptionU4Test extends TestCase {
    public function testEofExceptionU4() {
        $this->expectException(\Kaitai\Struct\Error\EndOfStreamError::class);
        $r = EofExceptionU4::fromFile(self::SRC_DIR_PATH . '/term_strz.bin');
    }
}
