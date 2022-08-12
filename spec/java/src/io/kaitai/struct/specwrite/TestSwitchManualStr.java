package io.kaitai.struct.specwrite;

import io.kaitai.struct.KaitaiStruct.ReadWrite;
import io.kaitai.struct.testwrite.SwitchManualStr;
import org.testng.annotations.Test;

public class TestSwitchManualStr extends CommonSpec {
    @Override
    protected Class<? extends ReadWrite> getStructClass() {
        return SwitchManualStr.class;
    }

    @Override
    protected String getSrcFilename() {
        return "switch_opcodes.bin";
    }
}
