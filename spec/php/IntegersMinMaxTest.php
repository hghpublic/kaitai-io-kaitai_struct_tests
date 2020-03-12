<?php

namespace Kaitai\Struct\Tests;

class IntegersMinMaxTest extends TestCase {
    public function testIntegersMinMax() {
        $r = IntegersMinMax::fromFile(self::SRC_DIR_PATH . '/integers_min_max.bin');

        $this->assertEquals(0, $r->unsignedMin()->u1());
        $this->assertEquals(0, $r->unsignedMin()->u2le());
        $this->assertEquals(0, $r->unsignedMin()->u4le());
        $this->assertEquals(0, $r->unsignedMin()->u8le());
        $this->assertEquals(0, $r->unsignedMin()->u2be());
        $this->assertEquals(0, $r->unsignedMin()->u4be());
        $this->assertEquals(0, $r->unsignedMin()->u8be());
        $this->assertEquals(255, $r->unsignedMax()->u1());
        $this->assertEquals(65535, $r->unsignedMax()->u2le());
        $this->assertEquals(4294967295, $r->unsignedMax()->u4le());
        $this->assertEquals(-1, $r->unsignedMax()->u8le()); // signed, not unsigned
        $this->assertEquals(65535, $r->unsignedMax()->u2be());
        $this->assertEquals(4294967295, $r->unsignedMax()->u4be());
        $this->assertEquals(-1, $r->unsignedMax()->u8be()); // signed, not unsigned
        $this->assertEquals(-128, $r->signedMin()->s1());
        $this->assertEquals(-32768, $r->signedMin()->s2le());
        $this->assertEquals(-2147483648, $r->signedMin()->s4le());
        $this->assertEquals(-9223372036854775808, $r->signedMin()->s8le());
        $this->assertEquals(-32768, $r->signedMin()->s2be());
        $this->assertEquals(-2147483648, $r->signedMin()->s4be());
        $this->assertEquals(-9223372036854775808, $r->signedMin()->s8be());
        $this->assertEquals(127, $r->signedMax()->s1());
        $this->assertEquals(32767, $r->signedMax()->s2le());
        $this->assertEquals(2147483647, $r->signedMax()->s4le());
        $this->assertEquals(9223372036854775807, $r->signedMax()->s8le());
        $this->assertEquals(32767, $r->signedMax()->s2be());
        $this->assertEquals(2147483647, $r->signedMax()->s4be());
        $this->assertEquals(9223372036854775807, $r->signedMax()->s8be());
    }
}
