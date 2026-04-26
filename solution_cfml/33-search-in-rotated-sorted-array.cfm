<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>33. Search In Rotated Sorted Array — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Search in Rotated Sorted Array - LeetCode Problem #33
 *
 * Given an integer array sorted in ascending order and then rotated at some pivot,
 * search for target. Return its index, or -1 if not found.
 *
 * @param nums Rotated sorted array
 * @param target Target value
 * @return 0-based index of target, or -1
 */
function search(required array nums, required numeric target) {
	var left = 1;
	var right = arrayLen(nums);

	while (left <= right) {
		var mid = int((left + right) / 2);

		if (nums[mid] == target) {
			return mid - 1;
		}

		// Left half is sorted
		if (nums[left] <= nums[mid]) {
			if (target >= nums[left] && target < nums[mid]) {
				right = mid - 1;
			} else {
				left = mid + 1;
			}
		} else {
			// Right half is sorted
			if (target > nums[mid] && target <= nums[right]) {
				left = mid + 1;
			} else {
				right = mid - 1;
			}
		}
	}

	return -1;
}

function runTests() {
	writeOutput("<h2>Search in Rotated Sorted Array - Test Results</h2>");

	var r1 = search([4,5,6,7,0,1,2], 0);
	writeOutput("<p><strong>Test 1:</strong> nums=[4,5,6,7,0,1,2], target=0</p>");
	writeOutput("<p>Expected: 4, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 4 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = search([4,5,6,7,0,1,2], 3);
	writeOutput("<p><strong>Test 2:</strong> nums=[4,5,6,7,0,1,2], target=3</p>");
	writeOutput("<p>Expected: -1, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == -1 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = search([1], 0);
	writeOutput("<p><strong>Test 3:</strong> nums=[1], target=0</p>");
	writeOutput("<p>Expected: -1, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == -1 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = search([1,3], 3);
	writeOutput("<p><strong>Test 4:</strong> nums=[1,3], target=3</p>");
	writeOutput("<p>Expected: 1, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 1 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
