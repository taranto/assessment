
function translateNumeral(num) {
	return translateProcess(num, '', false, false);
}

function translateProcess(num, partialTransl, ignoreZero, spaceRequired) {
	if (num >= 10000 && num <= 99999) {
			ignoreZero = true
			rightPartNumber = numeralRightPart(num, 3);
			rightPartTransl = translateProcess(rightPartNumber, partialTransl, ignoreZero, spaceRequired);
			thirdPartResult = addBeginSpaceIfNotNull(rightPartTransl);

			middlePartNumber = numeralFraction(num, 2, 3);
			middlePartTransl = translateProcess(middlePartNumber+00, partialTransl, ignoreZero, spaceRequired);
			secondPartResult = addBeginSpaceIfNotNull(middlePartTransl);
			secondPartResult = addPrefixIfNotNull(addBeginSpaceIfNotNull(middlePartTransl), ' ' + translateX00());

			leftPartNumber = numeralLeftPart(num, 2);
			leftPartTransl = translateProcess(leftPartNumber, partialTransl, ignoreZero, spaceRequired);
			firstPartResult = leftPartTransl + ' ' + translateX000()

			partialTransl = addANDBeforeLastNotNullPart(firstPartResult, secondPartResult, thirdPartResult);
	} else if (num >= 1000 && num <= 9999) {
		ignoreZero = true
		rightPartNumber = numeralRightPart(num, 2);
		rightPartTransl = translateProcess(rightPartNumber, partialTransl, ignoreZero, spaceRequired);

		leftPartNumber = numeralLeftPart(num, 2);
		leftPartTransl = translateProcess(leftPartNumber, partialTransl, ignoreZero, spaceRequired);

		partialTransl = leftPartTransl + ' ' + translateX00() + 
			addBeginSpaceIfNotNull(addBeginANDIfNotNull(rightPartTransl));

	} else if (num >= 100 && num <= 999) {
		ignoreZero = true;
		var rightPartNumber = numeralRightPart(num, 1);
		var rightPartTransl = translateProcess(rightPartNumber, partialTransl, ignoreZero, spaceRequired);

		var leftPartNumber = numeralLeftPart(num, 1);
		var leftPartTransl = translateProcess(leftPartNumber, partialTransl, ignoreZero, spaceRequired);

		partialTransl = leftPartTransl + ' ' + translateX00() + addBeginSpaceIfNotNull(addBeginANDIfNotNull(rightPartTransl));
	} else if (num >= 10 && num <= 19) {
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