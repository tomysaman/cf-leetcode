<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>45. Jump Game Ii — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Jump Game II - LeetCode Problem #45
 *
 * Given an array of non-negative integers representing maximum jump lengths,
 * find the minimum number of jumps to reach the last index.
 * It is guaranteed that you can always reach the last index.
 *
 * @param nums Array of non-negative integers
 * @return Minimum number of jumps to reach the last index
 */
function jump(required array nums) {
	// Greedy approach - O(n)
	var n = arrayLen(nums);
	var jumps = 0;
	var currentEnd = 1;
	var farthest = 1;

	for (var i = 1; i <= n - 1; i++) {
		var reach = i + nums[i];

		if (reach > farthest) {
			farthest = reach;
		}

		if (i == currentEnd) {
			jumps++;
			currentEnd = farthest;

			if (currentEnd >= n) {
				break;
			}
		}
	}

	return jumps;
}

function runTests() {
	writeOutput("<h2>Jump Game II - Test Results</h2>");

	var r1 = jump([2,3,1,1,4]);
	writeOutput("<p><strong>Test 1:</strong> nums=[2,3,1,1,4]</p>");
	writeOutput("<p>Expected: 2, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 2 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = jump([2,3,0,1,4]);
	writeOutput("<p><strong>Test 2:</strong> nums=[2,3,0,1,4]</p>");
	writeOutput("<p>Expected: 2, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == 2 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = jump([1]);
	writeOutput("<p><strong>Test 3:</strong> nums=[1]</p>");
	writeOutput("<p>Expected: 0, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = jump([1,2,3]);
	writeOutput("<p><strong>Test 4:</strong> nums=[1,2,3]</p>");
	writeOutput("<p>Expected: 2, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 2 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
