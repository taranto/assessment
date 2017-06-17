
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
function addBeginSpaceIfNotNull(partialTransl) {
	return addBeginSomethingIfNotNull(partialTransl, ' ');
}
function addBeginANDIfNotNull(partialTransl) {
	return addBeginSomethingIfNotNull(partialTransl, 'and ');
}
function addBeginSomethingIfNotNull(partialTransl, something) {
	if (partialTransl != null && partialTransl.length > 0) { 
		partialTransl = something + partialTransl;
	}
	return partialTransl;
}
