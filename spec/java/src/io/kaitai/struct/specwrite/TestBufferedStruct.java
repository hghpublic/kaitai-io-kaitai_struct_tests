package io.kaitai.struct.specwrite;

import io.kaitai.struct.KaitaiStruct.ReadWrite;
import io.kaitai.struct.testwrite.BufferedStruct;
import org.testng.annotations.Test;

public class TestBufferedStruct extends CommonSpec {
    @Override
    protected Class<? extends ReadWrite> getStructClass() {
        return BufferedStruct.class;
    }

    @Override
    protected String getSrcFilename() {
        return "buffered_struct.bin";
    }
}
