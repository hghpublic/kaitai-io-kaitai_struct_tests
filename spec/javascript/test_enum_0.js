// Autogenerated from KST: please remove this line if doing any edits by hand!

var assert = require('assert');
var testHelper = require('testHelper');

testHelper('Enum0', 'src/enum_0.bin', function(r, Enum0_) {
  assert.strictEqual(r.pet1, Enum0_.Enum0.Animal.CAT);
  assert.strictEqual(r.pet2, Enum0_.Enum0.Animal.CHICKEN);
});
