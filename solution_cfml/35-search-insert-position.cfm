<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>35. Search Insert Position — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Search Insert Position - LeetCode Problem #35
 *
 * Given a sorted array of distinct integers and a target value, return the index
 * if found. If not, return the index where it would be inserted in order.
 *
 * @param nums Sorted array of distinct integers
 * @param target Target value
 * @return 0-based index of target or insertion position
 */
function searchInsert(required array nums, required numeric target) {
	var lo = 1;
	var hi = arrayLen(nums);

	while (lo <= hi) {
		var mid = int((lo + hi) / 2);

		if (nums[mid] == target) {
			return mid - 1;
		} else if (nums[mid] < target) {
			lo = mid + 1;
		} else {
			hi = mid - 1;
		}
	}

	return lo - 1;
}

function runTests() {
	writeOutput("<h2>Search Insert Position - Test Results</h2>");

	var r1 = searchInsert([1,3,5,6], 5);
	writeOutput("<p><strong>Test 1:</strong> nums=[1,3,5,6], target=5</p>");
	writeOutput("<p>Expected: 2, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 2 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = searchInsert([1,3,5,6], 2);
	writeOutput("<p><strong>Test 2:</strong> nums=[1,3,5,6], target=2</p>");
	writeOutput("<p>Expected: 1, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == 1 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = searchInsert([1,3,5,6], 7);
	writeOutput("<p><strong>Test 3:</strong> nums=[1,3,5,6], target=7</p>");
	writeOutput("<p>Expected: 4, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 4 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = searchInsert([1,3,5,6], 0);
	writeOutput("<p><strong>Test 4:</strong> nums=[1,3,5,6], target=0</p>");
	writeOutput("<p>Expected: 0, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 0 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
