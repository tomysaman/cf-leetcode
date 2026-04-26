<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>18. 4sum — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * 4Sum - LeetCode Problem #18
 *
 * Given an array nums of n integers and an integer target, find all unique
 * quadruplets [nums[a], nums[b], nums[c], nums[d]] that sum to target.
 *
 * @param nums Array of integers
 * @param target Target sum
 * @return Array of unique quadruplets
 */
function fourSum(required array nums, required numeric target) {
	var result = [];
	var n = arrayLen(nums);

	if (n < 4) {
		return result;
	}

	arraySort(nums, "numeric");

	for (var i = 1; i <= n - 3; i++) {
		if (i > 1 && nums[i] == nums[i - 1]) {
			continue;
		}

		for (var j = i + 1; j <= n - 2; j++) {
			if (j > i + 1 && nums[j] == nums[j - 1]) {
				continue;
			}

			var left = j + 1;
			var right = n;

			while (left < right) {
				var sum = nums[i] + nums[j] + nums[left] + nums[right];

				if (sum == target) {
					arrayAppend(result, [nums[i], nums[j], nums[left], nums[right]]);

					while (left < right && nums[left] == nums[left + 1]) {
						left++;
					}

					while (left < right && nums[right] == nums[right - 1]) {
						right--;
					}

					left++;
					right--;
				} else if (sum < target) {
					left++;
				} else {
					right--;
				}
			}
		}
	}

	return result;
}

function runTests() {
	writeOutput("<h2>4Sum - Test Results</h2>");

	var r1 = fourSum([1,0,-1,0,-2,2], 0);
	writeOutput("<p><strong>Test 1:</strong> nums=[1,0,-1,0,-2,2], target=0</p>");
	writeOutput("<p>Expected: 3 quadruplets [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]], Got: " & arrayLen(r1) & " quadruplet(s)</p>");
	writeOutput("<p>Status: " & (arrayLen(r1) == 3 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = fourSum([], 0);
	writeOutput("<p><strong>Test 2:</strong> nums=[], target=0</p>");
	writeOutput("<p>Expected: [], Got: " & arrayLen(r2) & " quadruplet(s)</p>");
	writeOutput("<p>Status: " & (arrayLen(r2) == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = fourSum([2,2,2,2,2], 8);
	writeOutput("<p><strong>Test 3:</strong> nums=[2,2,2,2,2], target=8</p>");
	writeOutput("<p>Expected: 1 quadruplet [[2,2,2,2]], Got: " & arrayLen(r3) & " quadruplet(s)</p>");
	writeOutput("<p>Status: " & (arrayLen(r3) == 1 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
