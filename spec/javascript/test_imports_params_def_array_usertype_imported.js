// Autogenerated from KST: please remove this line if doing any edits by hand!

var assert = require('assert');
var testHelper = require('testHelper');

testHelper('ImportsParamsDefArrayUsertypeImported', 'src/process_xor_4.bin', function(r, ImportsParamsDefArrayUsertypeImported) {
  assert.strictEqual(r.hws.length, 2);
  assert.strictEqual(r.hws[0].one, 236);
  assert.strictEqual(r.hws[1].one, 187);
  assert.strictEqual(r.two.hw0One, 236);
  assert.strictEqual(r.two.hw1One, 187);
});
