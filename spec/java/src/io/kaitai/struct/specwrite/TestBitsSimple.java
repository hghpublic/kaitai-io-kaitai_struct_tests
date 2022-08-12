package io.kaitai.struct.specwrite;

import io.kaitai.struct.KaitaiStruct.ReadWrite;
import io.kaitai.struct.testwrite.BitsSimple;
import org.testng.annotations.Test;

public class TestBitsSimple extends CommonSpec {
    @Override
    protected Class<? extends ReadWrite> getStructClass() {
        return BitsSimple.class;
    }

    @Override
    protected String getSrcFilename() {
        return "fixed_struct.bin";
    }
}
