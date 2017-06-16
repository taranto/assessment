
var unexpectedResult = 'This is an unexpected result!';
function testAll() {
	var testResult = 'All asserts are valid!';
	try {
		assert.equal(translateNumeral(7), 'seven', unexpectedResult);
	} catch (e) {
		testResult = 'An assert failed';
		testResult = e;
	}
	return testResult;
}