// Autogenerated from KST: please remove this line if doing any edits by hand!

use std::fs;

extern crate kaitai;
use self::kaitai::*;
mod formats;
use formats::valid_fail_range_float::*;

#[test]
fn test_valid_fail_range_float() {
    let bytes = fs::read("../../src/floating_points.bin").unwrap();
    let reader = BytesReader::new(&bytes);
    let mut r = ValidFailRangeFloat::default();

    if let Err(err) = r.read(&reader, None, KStructUnit::parent_stack()) {
        println!("expected err: {:?}, exception: ValidationGreaterThanError(FloatMultiType(Width4,None))", err);
    } else {
        panic!("no expected exception: ValidationGreaterThanError(FloatMultiType(Width4,None))");
    }
}
