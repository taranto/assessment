
var ur = 'This is an unexpected result!';

function testAll() {
	var testResult = 'An assertion has failed!';
	assert.equal(translateNumeral(7), 'seven', ur);
	assert.equal(translateNumeral(0), 'zero', ur);
	assert.equal(translateNumeral(20), 'twenty', ur);
	assert.equal(translateNumeral(42), 'forty-two', ur);
	assert.equal(translateNumeral(66), 'sixty-six', ur);
	assert.equal(translateNumeral(10), 'ten', ur);
	assert.equal(translateNumeral(12), 'twelve', ur);
	assert.equal(translateNumeral(15), 'fifteen', ur);
	testResult = 'All asserts are valid!'
	return testResult;
}