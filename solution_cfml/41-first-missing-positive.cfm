<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>41. First Missing Positive — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * First Missing Positive - LeetCode Problem #41
 *
 * Given an unsorted integer array, find the smallest missing positive integer.
 * Must run in O(n) time and use constant extra space.
 *
 * @param nums Array of integers
 * @return Smallest missing positive integer
 */
function firstMissingPositive(required array nums) {
	var n = arrayLen(nums);

	// Place each number in its correct index position (nums[i] = i+1 in 1-based)
	for (var i = 1; i <= n; i++) {
		while (nums[i] >= 1 && nums[i] <= n && nums[nums[i]] != nums[i]) {
			var tmp = nums[nums[i]];
			nums[nums[i]] = nums[i];
			nums[i] = tmp;
		}
	}

	// Find first position where nums[i] != i+1 (1-based: nums[i] != i)
	for (var i = 1; i <= n; i++) {
		if (nums[i] != i) {
			return i;
		}
	}

	return n + 1;
}

function runTests() {
	writeOutput("<h2>First Missing Positive - Test Results</h2>");

	var r1 = firstMissingPositive([1,2,0]);
	writeOutput("<p><strong>Test 1:</strong> nums=[1,2,0]</p>");
	writeOutput("<p>Expected: 3, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 3 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = firstMissingPositive([3,4,-1,1]);
	writeOutput("<p><strong>Test 2:</strong> nums=[3,4,-1,1]</p>");
	writeOutput("<p>Expected: 2, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == 2 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = firstMissingPositive([7,8,9,11,12]);
	writeOutput("<p><strong>Test 3:</strong> nums=[7,8,9,11,12]</p>");
	writeOutput("<p>Expected: 1, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 1 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = firstMissingPositive([1,2,3]);
	writeOutput("<p><strong>Test 4:</strong> nums=[1,2,3]</p>");
	writeOutput("<p>Expected: 4, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 4 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
