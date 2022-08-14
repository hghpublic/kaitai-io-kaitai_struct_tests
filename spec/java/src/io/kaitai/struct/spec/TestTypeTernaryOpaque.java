package io.kaitai.struct.spec;

import io.kaitai.struct.testformats.TypeTernaryOpaque;
import org.testng.annotations.Test;
import static org.testng.Assert.*;
public class TestTypeTernaryOpaque extends CommonSpec {

    @Test
    public void testTypeTernaryOpaque() throws Exception {
        TypeTernaryOpaque r = TypeTernaryOpaque.fromFile(SRC_DIR + "term_strz.bin");

        assertIntEquals(r.dif().one(), 102);
    }
}
