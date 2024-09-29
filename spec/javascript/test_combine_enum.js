// Autogenerated from KST: please remove this line if doing any edits by hand!

var assert = require('assert');
var testHelper = require('testHelper');

testHelper('CombineEnum', 'src/enum_0.bin', function(r, CombineEnum) {
  assert.strictEqual(r.enumU4, CombineEnum.Animal.PIG);
  assert.strictEqual(r.enumU2, CombineEnum.Animal.HORSE);
  assert.strictEqual(r.enumU4U2, CombineEnum.Animal.HORSE);
});
