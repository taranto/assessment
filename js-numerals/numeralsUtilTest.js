
var ur = 'This is an unexpected result!';

function testAll() {
	var testResult = 'All asserts are valid!';
//	try {
		assert.equal(numeralRightPart(123456, 1), 23456, ur);
		assert.equal(numeralRightPart(123456, 2), 3456, ur);
		assert.equal(numeralLeftPart(123456, 1), 1, ur);
		assert.equal(numeralLeftPart(123456, 2), 12, ur);
		assert.equal(numeralFraction(123456, 3, 4), 4, ur);
		assert.equal(numeralFraction(123456, 2, 5), 345, ur);
//	} catch (e) {
//		testResult = 'An assert failed: ' + e;
//	}
	return testResult;
}