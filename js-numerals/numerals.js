function translateNumeral(num) {
	num = clearNumber(num);
	return translateProcess(num, '', false, false);
}

function translateProcess(num, partialTransl, ignoreZero, spaceRequired) {
	if (num >= 10000 && num <= 99999) {
		ignoreZero = true
		let rightPartNumber = numeralRightPart(num, 3);
		let rightPartTransl = translateProcess(rightPartNumber, partialTransl, ignoreZero, spaceRequired);
		let thirdPartResult = addBeginSpaceIfNotNull(rightPartTransl);

		let middlePartNumber = numeralFraction(num, 2, 3);
		let middlePartTransl = translateProcess(middlePartNumber + 00, partialTransl, ignoreZero, spaceRequired);
		let secondPartResult = addBeginSpaceIfNotNull(middlePartTransl);
		secondPartResult = addPrefixIfNotNull(addBeginSpaceIfNotNull(middlePartTransl), ' ' + translateX00());

		let leftPartNumber = numeralLeftPart(num, 2);
		let leftPartTransl = translateProcess(leftPartNumber, partialTransl, ignoreZero, spaceRequired);
		let firstPartResult = leftPartTransl + ' ' + translateX000()

		partialTransl = addANDBeforeLastNotNullPart(firstPartResult, secondPartResult, thirdPartResult);
	} else if (num >= 1000 && num <= 9999) {
		ignoreZero = true
		let rightPartNumber = numeralRightPart(num, 2);
		let rightPartTransl = translateProcess(rightPartNumber, partialTransl, ignoreZero, spaceRequired);

		let leftPartNumber = numeralLeftPart(num, 2);
		let leftPartTransl = translateProcess(leftPartNumber, partialTransl, ignoreZero, spaceRequired);

		partialTransl = leftPartTransl + ' ' + translateX00() +
			addBeginSpaceIfNotNull(addBeginANDIfNotNull(rightPartTransl));

	} else if (num >= 100 && num <= 999) {
		ignoreZero = true;
		let rightPartNumber = numeralRightPart(num, 1);
		let rightPartTransl = translateProcess(rightPartNumber, partialTransl, ignoreZero, spaceRequired);

		let leftPartNumber = numeralLeftPart(num, 1);
		let leftPartTransl = translateProcess(leftPartNumber, partialTransl, ignoreZero, spaceRequired);

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
		if (0 != num || !ignoreZero) {
			partialTransl = addEndMinusIfRequired(partialTransl, spaceRequired) + translate0to9(num);
		}
	}

	return partialTransl;
}