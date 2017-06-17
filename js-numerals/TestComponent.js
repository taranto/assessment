class TestComponent {

	constructor() {
		this.ur = 'This is an unexpected result!';
		this.allAssertionsValid = 'All asserts are valid!';
		this.validAssertion = 'Valid assertion!';
		this.failedAssertion = 'An assertion has failed!';
		this.assertions = 0;
		this.failures = 0;
		this.tests = 0;
		this.testMsgs = [];
	}

	testIt(value, expect) {
		this.tests++;
		var testMsg = 'Valid assertion!';
		try {
			assert.equal(value, expect, this.ur);
			this.assertions++;
		} catch (e) {
			testMsg = this.failedAssertion + ' ' +
				'Expected: ' + e.expected + ' ' + 
				// 'Operation: ' + e.operator + ' ' +
				'Restult: ' + e.actual;
			this.failures++;
		}
		this.testMsgs.push(testMsg);
	}

	getReport() {
		var report = 'Report: {' + 
			' tests: ' + this.tests + 
			' assertions: ' + this.assertions +
			' failures: ' + this.failures + ' }';
		return report;
	}

	getDetailedReport() {
		var report = ''
		for (var i = this.testMsgs.length - 1; i >= 0; i--) {
			report = report + this.testMsgs[i] + '<br/>';
		}
		return report;
	}


}