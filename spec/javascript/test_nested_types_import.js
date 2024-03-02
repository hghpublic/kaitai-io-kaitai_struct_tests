// Autogenerated from KST: please remove this line if doing any edits by hand!

var assert = require('assert');
var testHelper = require('testHelper');

testHelper('NestedTypesImport', 'src/fixed_struct.bin', function(r, NestedTypesImport) {

  assert.strictEqual(r.aCc.valueCc, 80);
  assert.strictEqual(r.aCD.valueD, 65);
  assert.strictEqual(r.b.valueB, 67);
  assert.strictEqual(r.b.aCc.valueCc, 75);
  assert.strictEqual(r.b.aCD.valueD, 45);
});
