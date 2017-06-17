
function numeralRightPart(num, cutPos) {
	return parseInt(num.toString().substring(cutPos, num.toString().length));
}
function numeralLeftPart(num, cutPos) {
	return parseInt(num.toString().substring(0, cutPos));
}
function numeralFraction(num, cutPosBegin, cutPosEnd) {
	return parseInt(num.toString().substring(cutPosBegin, cutPosEnd));
}
function addEndSpaceIfRequired(partialTransl, spaceReq) {
	return addEndSomethingIfRequired(partialTransl, spaceReq, ' ');
}
function addEndMinusIfRequired(partialTransl, spaceReq) {
	return addEndSomethingIfRequired(partialTransl, spaceReq, '-');
}
function addEndSomethingIfRequired(partialTransl, spaceReq, something) {
	if (spaceReq) {
		partialTransl = partialTransl + something;
	}
	return partialTransl;
}
function addPrefixIfNotNull(partialTransl, prefix) {
	if (isEmpity(partialTransl)) {
		partialTransl = partialTransl + prefix
	}
	return partialTransl;
}
function addBeginSpaceIfNotNull(partialTransl) {
	return addBeginSomethingIfNotNull(partialTransl, ' ');
}
function addBeginANDIfNotNull(partialTransl) {
	return addBeginSomethingIfNotNull(partialTransl, 'and ');
}
function addBeginSomethingIfNotNull(partialTransl, something) {
	if (isEmpity(partialTransl)) { 
		partialTransl = something + partialTransl;
	}
	return partialTransl;
}
function addANDBeforeLastNotNullPart(part1, part2, part3) {
	if (isEmpity(part3)) {
		part3 = ' and' + part3;
	} else if (isEmpity(part2)) {
		part2 = ' and' + part2;
	}
	return part1 + part2 + part3;
}
function isEmpity(s) {
	return s != null && s.length > 0;
}
function clearNumber (dirtyNum) {
	// var partialValue = Math.floor(dirtyNum)
	var partialValue = dirtyNum.toString().replace(/[^\d.]/g, '');
	if (partialValue == '') { 
		partialValue = 0;
	}
	return parseInt(partialValue);
}
