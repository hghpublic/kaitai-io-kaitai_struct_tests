// Autogenerated from KST: please remove this line if doing any edits by hand!

package spec

import (
	"runtime/debug"
	"os"
	"testing"
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	. "test_formats"
	"github.com/stretchr/testify/assert"
)

func TestDebugArrayUserCurrentExcluded(t *testing.T) {
	defer func() {
		if r := recover(); r != nil {
			debug.PrintStack()
			t.Fatal("unexpected panic:", r)
		}
	}()
	f, err := os.Open("../../src/term_strz.bin")
	if err != nil {
		t.Fatal(err)
	}
	s := kaitai.NewStream(f)
	var r DebugArrayUserCurrentExcluded
	err = r.Read(s, &r, &r)
	if err != nil {
		t.Fatal(err)
	}
	assert.EqualValues(t, []uint8{102, 111, 111}, r.ArrayOfCats[0].Meow)
	assert.EqualValues(t, []uint8{124, 98}, r.ArrayOfCats[1].Meow)
	assert.EqualValues(t, []uint8{97}, r.ArrayOfCats[2].Meow)
}
