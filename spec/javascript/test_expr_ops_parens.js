// Autogenerated from KST: please remove this line if doing any edits by hand!

var assert = require('assert');
var testHelper = require('testHelper');

testHelper('ExprOpsParens', 'src/enum_negative.bin', function(r, ExprOpsParens) {
  assert.strictEqual(r.iSumToStr, "29");
  assert.strictEqual(r.fSumToInt, 9);
  assert.strictEqual(r.strConcatLen, 10);
  assert.strictEqual(r.strConcatRev, "9876543210");
  assert.strictEqual(r.strConcatSubstr2To7, "23456");
  assert.strictEqual(r.strConcatToI, 123456789);
  assert.strictEqual(r.boolEq, 0);
  assert.strictEqual(r.boolAnd, 0);
  assert.strictEqual(r.boolOr, 1);
});
