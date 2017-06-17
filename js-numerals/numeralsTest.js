class NumeralsTest{ 

 	testAll() {
 		var tc = new TestComponent();
		tc.testIt(translateNumeral(7), 'seven');
		tc.testIt(translateNumeral(0), 'zero');
		tc.testIt(translateNumeral(20), 'twenty');
		tc.testIt(translateNumeral(42), 'forty-two');
		tc.testIt(translateNumeral(66), 'sixty-six');
		tc.testIt(translateNumeral(10), 'ten');
		tc.testIt(translateNumeral(12), 'twelve');
		tc.testIt(translateNumeral(15), 'fifteen');
		tc.testIt(translateNumeral(100), 'one hundred');
		tc.testIt(translateNumeral(101), 'one hundred and one');
		tc.testIt(translateNumeral(444), 'four hundred and forty-four');
		return tc.getReport() + ' <br/> ' + tc.getDetailedReport();
	}

}
