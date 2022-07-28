// Autogenerated from KST: please remove this line if doing any edits by hand!

use std::fs;

extern crate kaitai;
use self::kaitai::*;
mod formats;
use formats::valid_fail_range_str::*;

#[test]
fn test_valid_fail_range_str() {
    let bytes = fs::read("../../src/fixed_struct.bin").unwrap();
    let reader = BytesReader::new(&bytes);
    let mut r = ValidFailRangeStr::default();

    if let Err(err) = r.read(&reader, None, KStructUnit::parent_stack()) {
        println!("expected err: {:?}, exception: ValidationGreaterThanError(CalcStrType)", err);
    } else {
        panic!("no expected exception: ValidationGreaterThanError(CalcStrType)");
    }
}
