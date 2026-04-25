<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>34. Find First And Last Position Of Element In Sorted Array — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Find First and Last Position of Element in Sorted Array - LeetCode Problem #34
 *
 * Given a sorted integer array nums and a target value, find the starting and
 * ending positions of target. Return [-1, -1] if not found.
 * Time complexity must be O(log n).
 *
 * @param nums Sorted array of integers
 * @param target Target value
 * @return Array [firstIndex, lastIndex] (0-based), or [-1,-1]
 */
function searchRange(required array nums, required numeric target) {
	function findLeft(required array arr, required numeric t) {
		var lo = 1;
		var hi = arrayLen(arr);
		var pos = -1;

		while (lo <= hi) {
			var mid = int((lo + hi) / 2);

			if (arr[mid] == t) {
				pos = mid;
				hi = mid - 1;
			} else if (arr[mid] < t) {
				lo = mid + 1;
			} else {
				hi = mid - 1;
			}
		}

		return pos;
	}

	function findRight(required array arr, required numeric t) {
		var lo = 1;
		var hi = arrayLen(arr);
		var pos = -1;

		while (lo <= hi) {
			var mid = int((lo + hi) / 2);

			if (arr[mid] == t) {
				pos = mid;
				lo = mid + 1;
			} else if (arr[mid] < t) {
				lo = mid + 1;
			} else {
				hi = mid - 1;
			}
		}

		return pos;
	}

	var left = findLeft(nums, target);
	var right = findRight(nums, target);

	// Convert to 0-based
	return [left == -1 ? -1 : left - 1, right == -1 ? -1 : right - 1];
}

function runTests() {
	writeOutput("<h2>Find First and Last Position of Element in Sorted Array - Test Results</h2>");

	var r1 = searchRange([5,7,7,8,8,10], 8);
	writeOutput("<p><strong>Test 1:</strong> nums=[5,7,7,8,8,10], target=8</p>");
	writeOutput("<p>Expected: [3,4], Got: [" & arrayToList(r1) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r1) == "3,4" ? "PASS" : "FAIL") & "</p><br>");

	var r2 = searchRange([5,7,7,8,8,10], 6);
	writeOutput("<p><strong>Test 2:</strong> nums=[5,7,7,8,8,10], target=6</p>");
	writeOutput("<p>Expected: [-1,-1], Got: [" & arrayToList(r2) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r2) == "-1,-1" ? "PASS" : "FAIL") & "</p><br>");

	var r3 = searchRange([], 0);
	writeOutput("<p><strong>Test 3:</strong> nums=[], target=0</p>");
	writeOutput("<p>Expected: [-1,-1], Got: [" & arrayToList(r3) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r3) == "-1,-1" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
