<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>15. 3sum — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * 3Sum - LeetCode Problem #15
 *
 * Given an array of n integers, find all unique triplets that sum to zero.
 *
 * @param nums Array of integers
 * @return Array of arrays, each containing a unique triplet that sums to zero
 */
function threeSum(required array nums) {
	var result = [];
	var n = arrayLen(nums);

	if (n < 3) {
		return result;
	}

	// Sort the array
	arraySort(nums, "numeric");

	for (var i = 1; i <= n - 2; i++) {
		// Skip duplicate values for the first element
		if (i > 1 && nums[i] == nums[i - 1]) {
			continue;
		}

		if (nums[i] > 0) {
			break;
		}

		var left = i + 1;
		var right = n;

		while (left < right) {
			var sum = nums[i] + nums[left] + nums[right];

			if (sum == 0) {
				arrayAppend(result, [nums[i], nums[left], nums[right]]);

				// Skip duplicates for second and third elements
				while (left < right && nums[left] == nums[left + 1]) {
					left++;
				}

				while (left < right && nums[right] == nums[right - 1]) {
					right--;
				}

				left++;
				right--;
			} else if (sum < 0) {
				left++;
			} else {
				right--;
			}
		}
	}

	return result;
}

function runTests() {
	writeOutput("<h2>3Sum - Test Results</h2>");

	var r1 = threeSum([-1,0,1,2,-1,-4]);
	writeOutput("<p><strong>Test 1:</strong> nums=[-1,0,1,2,-1,-4]</p>");
	writeOutput("<p>Expected: [[-1,-1,2],[-1,0,1]], Got: " & arrayLen(r1) & " triplet(s)</p>");
	var pass1 = arrayLen(r1) == 2 && arrayToList(r1[1]) == "-1,-1,2" && arrayToList(r1[2]) == "-1,0,1";
	writeOutput("<p>Status: " & (pass1 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = threeSum([]);
	writeOutput("<p><strong>Test 2:</strong> nums=[]</p>");
	writeOutput("<p>Expected: [], Got: " & arrayLen(r2) & " triplet(s)</p>");
	writeOutput("<p>Status: " & (arrayLen(r2) == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = threeSum([0]);
	writeOutput("<p><strong>Test 3:</strong> nums=[0]</p>");
	writeOutput("<p>Expected: [], Got: " & arrayLen(r3) & " triplet(s)</p>");
	writeOutput("<p>Status: " & (arrayLen(r3) == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = threeSum([0,0,0]);
	writeOutput("<p><strong>Test 4:</strong> nums=[0,0,0]</p>");
	writeOutput("<p>Expected: [[0,0,0]], Got: " & arrayLen(r4) & " triplet(s)</p>");
	writeOutput("<p>Status: " & (arrayLen(r4) == 1 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
