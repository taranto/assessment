
function translateNumeral(num) {
	return translateProcess(num, '', false, false);
}

function translateProcess(num, partialTransl, ignoreZero, spaceRequired) {
	if (num >= 10 && num <= 19) {
		ignoreZero = true;
		partialTransl = addEndSpaceIfRequired(partialTransl, spaceRequired) + translate10to19(num);
		num = numeralRightPart(num, 2);
		partialTransl = translateProcess(num, partialTransl, ignoreZero, true);
	} else if (num >= 20 && num <= 99) {
		ignoreZero = true;
		partialTransl = addEndSpaceIfRequired(partialTransl, spaceRequired) + translate20to99(num);
		num = numeralRightPart(num, 1);
		partialTransl = translateProcess(num, partialTransl, ignoreZero, true);
	} else if (num >= 0 && num <= 9) {
		if(0 != num || !ignoreZero) {
			partialTransl = addEndMinusIfRequired(partialTransl, spaceRequired) + translate0to9(num);
		}
	}

	return partialTransl;
}