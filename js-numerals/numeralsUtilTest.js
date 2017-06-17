class NumeralsUtilTest{ 

 	testAll() {
 		var tc = new TestComponent();
		tc.testIt(numeralRightPart(123456, 1), 23456);
		tc.testIt(numeralRightPart(123456, 2), 3456);
		tc.testIt(numeralLeftPart(123456, 1), 1);
		tc.testIt(numeralLeftPart(123456, 2), 12);
		tc.testIt(numeralFraction(123456, 3, 4), 4);
		tc.testIt(numeralFraction(123456, 2, 5), 345);
		return tc.getReport() + ' <br/> ' + tc.getDetailedReport();
	}

}
