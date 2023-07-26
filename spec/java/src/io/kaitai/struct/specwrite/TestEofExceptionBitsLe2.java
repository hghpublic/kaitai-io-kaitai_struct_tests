package io.kaitai.struct.specwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStream;
import io.kaitai.struct.KaitaiStruct.ReadWrite;
import io.kaitai.struct.RandomAccessFileKaitaiStream;
import io.kaitai.struct.testwrite.EofExceptionBitsLe2;

import java.io.File;
import java.io.RandomAccessFile;

import org.testng.Assert.ThrowingRunnable;
import org.testng.annotations.Test;
import static org.testng.Assert.assertEquals;

public class TestEofExceptionBitsLe2 extends CommonSpec {
    @Override
    protected Class<? extends ReadWrite> getStructClass() {
        throw new UnsupportedOperationException();
    }

    @Override
    protected String getSrcFilename() {
        throw new UnsupportedOperationException();
    }

    @Test
    public void testEofExceptionBitsLe2BB() throws Exception {
        EofExceptionBitsLe2 r = getEofExceptionBitsLe2();

        try (KaitaiStream io = new ByteBufferKaitaiStream(3)) {
            assertThrowsEofError(new ThrowingRunnable() {
                @Override
                public void run() throws Throwable {
                    r._write_Seq(io);
                }
            });
            assertIntEquals(io.pos(), 1);
        }
    }

    @Test
    public void testEofExceptionBitsLe2RAF() throws Exception {
        EofExceptionBitsLe2 r = getEofExceptionBitsLe2();

        File file = new File(SCRATCH_DIR + "specwrite_TestEofExceptionBitsLe2.bin");
        RandomAccessFile raf = new RandomAccessFile(file, "rw");
        raf.setLength(3);

        Throwable thr;
        try (KaitaiStream io = new RandomAccessFileKaitaiStream(raf)) {
            thr = expectThrowsEofError(new ThrowingRunnable() {
                @Override
                public void run() throws Throwable {
                    r._write_Seq(io);
                }
            });
            assertIntEquals(io.pos(), 1);
        } finally {
            file.delete();
        }
        assertEquals(thr.getMessage(), "requested to write 3 bytes, but only 2 bytes left in the stream");
    }

    protected EofExceptionBitsLe2 getEofExceptionBitsLe2() {
        EofExceptionBitsLe2 r = new EofExceptionBitsLe2();
        r.setPreBits(0x01);
        r.setFailBits(0b0_11111111_01000010);
        r._check();

        return r;
    }
}
