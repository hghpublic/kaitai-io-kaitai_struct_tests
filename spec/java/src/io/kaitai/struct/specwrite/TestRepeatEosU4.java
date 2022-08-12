package io.kaitai.struct.specwrite;

import io.kaitai.struct.KaitaiStruct.ReadWrite;
import io.kaitai.struct.testwrite.RepeatEosU4;
import org.testng.annotations.Test;

public class TestRepeatEosU4 extends CommonSpec {
    @Override
    protected Class<? extends ReadWrite> getStructClass() {
        return RepeatEosU4.class;
    }

    @Override
    protected String getSrcFilename() {
        return "repeat_eos_struct.bin";
    }
}
