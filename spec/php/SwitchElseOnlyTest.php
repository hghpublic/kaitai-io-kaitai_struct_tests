<?php
// Autogenerated from KST: please remove this line if doing any edits by hand!

namespace Kaitai\Struct\Tests;

class SwitchElseOnlyTest extends TestCase {
    public function testSwitchElseOnly() {
        $r = SwitchElseOnly::fromFile(self::SRC_DIR_PATH . '/switch_opcodes.bin');

        $this->assertEquals(83, $r->opcode());
        $this->assertEquals(102, $r->primByte());
        $this->assertEquals("\x6F\x6F\x62\x61", $r->struct()->value());
        $this->assertEquals("\x72\x00\x49\x42", $r->structSized()->value());
    }
}
