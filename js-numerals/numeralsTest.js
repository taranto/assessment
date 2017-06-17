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
		tc.testIt(translateNumeral(3000), 'thirty hundred');
		tc.testIt(translateNumeral(1999), 'nineteen hundred and ninety-nine');
		tc.testIt(translateNumeral(7900), 'seventy-nine hundred');
		tc.testIt(translateNumeral(17999), 'seventeen thousand nine hundred and ninety-nine');
		tc.testIt(translateNumeral(10000), 'ten thousand');
		tc.testIt(translateNumeral(11000), 'eleven thousand');
		tc.testIt(translateNumeral(11001), 'eleven thousand and one');
		tc.testIt(translateNumeral(11012), 'eleven thousand and twelve');
		tc.testIt(translateNumeral(11100), 'eleven thousand and one hundred');
		tc.testIt(translateNumeral(11111), 'eleven thousand one hundred and eleven');
		tc.testIt(translateNumeral('1\n'), 'one');
		tc.testIt(translateNumeral('2\a*(())_+-=][adsfadn'), 'two');
		tc.testIt(translateNumeral('003,0'), 'thirty');
		tc.testIt(translateNumeral('4,0'), 'forty');
		tc.testIt(translateNumeral('fadsfadf'), 'zero');
		tc.testIt(translateNumeral('fadsfadf7'), 'seven');
		tc.testIt(translateNumeral(''), 'zero');
		tc.testIt(translateNumeral('0.55'), 'zero');
		tc.testIt(translateNumeral(123456), '');
		return tc.getReport() + ' <br/> ' + tc.getDetailedReport();
	}

}
