<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>26. Remove Duplicates From Sorted Array — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Remove Duplicates from Sorted Array - LeetCode Problem #26
 *
 * Given a sorted array nums, remove the duplicates in-place such that each
 * element appears only once and return the new length.
 *
 * @param nums Sorted array of integers
 * @return New length after removing duplicates (array is modified in-place)
 */
function removeDuplicates(required array nums) {
	if (arrayIsEmpty(nums)) {
		return 0;
	}

	var k = 1;

	for (var i = 2; i <= arrayLen(nums); i++) {
		if (nums[i] != nums[k]) {
			k++;
			nums[k] = nums[i];
		}
	}

	return k;
}

function runTests() {
	writeOutput("<h2>Remove Duplicates from Sorted Array - Test Results</h2>");

	var a1 = [1,1,2];
	var r1 = removeDuplicates(a1);
	var a1display = [];
	for (var idx = 1; idx <= r1; idx++) { arrayAppend(a1display, a1[idx]); }
	writeOutput("<p><strong>Test 1:</strong> nums=[1,1,2]</p>");
	writeOutput("<p>Expected length: 2, Got: " & r1 & " | First " & r1 & " elements: [" & arrayToList(a1display) & "]</p>");
	writeOutput("<p>Status: " & (r1 == 2 ? "PASS" : "FAIL") & "</p><br>");

	var a2 = [0,0,1,1,1,2,2,3,3,4];
	var r2 = removeDuplicates(a2);
	var a2display = [];
	for (var idx = 1; idx <= r2; idx++) { arrayAppend(a2display, a2[idx]); }
	writeOutput("<p><strong>Test 2:</strong> nums=[0,0,1,1,1,2,2,3,3,4]</p>");
	writeOutput("<p>Expected length: 5, Got: " & r2 & " | First " & r2 & " elements: [" & arrayToList(a2display) & "]</p>");
	writeOutput("<p>Status: " & (r2 == 5 ? "PASS" : "FAIL") & "</p><br>");

	var a3 = [];
	var r3 = removeDuplicates(a3);
	writeOutput("<p><strong>Test 3:</strong> nums=[]</p>");
	writeOutput("<p>Expected length: 0, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 0 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
