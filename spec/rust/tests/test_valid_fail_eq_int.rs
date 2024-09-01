// Autogenerated from KST: please remove this line if doing any edits by hand!

use std::fs;
extern crate kaitai;
use self::kaitai::*;
use rust::formats::valid_fail_eq_int::*;

#[test]
fn test_valid_fail_eq_int() -> KResult<()> {
    let bytes = fs::read("../../src/fixed_struct.bin").unwrap();
    let _io = BytesReader::from(bytes);
    let res: KResult<OptRc<ValidFailEqInt>> = ValidFailEqInt::read_into(&_io, None, None);
    let err = res.expect_err("expected Err representing ValidationNotEqualError(Int1Type(false)), but got Ok");
    assert!(
        matches!(err, KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, .. })),
        "expected: {}\n but got: {:?}",
        "KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, .. })", err
    );
    Ok(())
}
