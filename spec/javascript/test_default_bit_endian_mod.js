// Autogenerated from KST: please remove this line if doing any edits by hand!

var assert = require('assert');
var testHelper = require('testHelper');

testHelper('DefaultBitEndianMod', 'src/fixed_struct.bin', function(r, DefaultBitEndianMod) {
  assert.strictEqual(r.main.one, 336);
  assert.strictEqual(r.main.two, 8608);
  assert.strictEqual(r.main.nest.two, 11595);
  assert.strictEqual(r.main.nestBe.two, 12799);
});
