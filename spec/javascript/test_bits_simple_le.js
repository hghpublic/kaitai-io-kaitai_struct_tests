// Autogenerated from KST: please remove this line if doing any edits by hand!

var assert = require('assert');
var testHelper = require('testHelper');

testHelper('BitsSimpleLe', 'src/fixed_struct.bin', function(r, BitsSimpleLe) {
  assert.strictEqual(r.byte1, 80);
  assert.strictEqual(r.byte2, 65);
  assert.strictEqual(r.bitsA, true);
  assert.strictEqual(r.bitsB, 1);
  assert.strictEqual(r.bitsC, 4);
  assert.strictEqual(r.largeBits1, 331);
  assert.strictEqual(r.spacer, 3);
  assert.strictEqual(r.largeBits2, 393);
  assert.strictEqual(r.normalS2, -1);
  assert.strictEqual(r.byte8910, 4407632);
  assert.strictEqual(r.byte11To14, 760556875);
  assert.strictEqual(r.byte15To19, 1099499455812);
  assert.strictEqual(r.byte20To27, 18446744073709551615);
  assert.strictEqual(r.testIfB1, 123);
});
