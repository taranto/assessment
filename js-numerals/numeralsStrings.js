function translate0to9(num) {
	var translation = '';
	switch (parseInt(num)) {
		case 0: translation = 'zero'; break;
		case 1: translation = 'one'; break;
		case 2: translation = 'two'; break;
		case 3: translation = 'three'; break;
		case 4: translation = 'four'; break;
		case 5: translation = 'five'; break;
		case 6: translation = 'six'; break;
		case 7: translation = 'seven'; break;
		case 8: translation = 'eight'; break;
		case 9: translation = 'nine'; break;
	}
	return translation;
}

function translate10to19(num) {
	var translation = '';
	switch (parseInt(num)) {
		case 10: translation = 'ten'; break;
		case 11: translation = 'eleven'; break;
		case 12: translation = 'twelve'; break;
		case 13: translation = 'thirteen'; break;
		case 14: translation = 'fourteen'; break;
		case 15: translation = 'fifteen'; break;
		case 16: translation = 'sixteen'; break;
		case 17: translation = 'seventeen'; break;
		case 18: translation = 'eighteen'; break;
		case 19: translation = 'nineteen'; break;
	}
	return translation;
}

function translate20to99(num) {
	num = parseInt(num);
	var translation = '';
	if (num >= 20 && num <= 29) translation = 'twenty';
	if (num >= 30 && num <= 39) translation = 'thirty';
	if (num >= 40 && num <= 49) translation = 'forty';
	if (num >= 50 && num <= 59) translation = 'fifty';
	if (num >= 60 && num <= 69) translation = 'sixty';
	if (num >= 70 && num <= 79) translation = 'seventy';
	if (num >= 80 && num <= 89) translation = 'eighty';
	if (num >= 90 && num <= 99) translation = 'ninety';
	return translation;
}

function translateX00(num) {
	return 'hundred'
}

function translateX000(num) {
	return 'thousand'
}
