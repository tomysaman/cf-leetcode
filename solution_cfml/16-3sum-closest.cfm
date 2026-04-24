<cfscript>
/**
 * 3Sum Closest - LeetCode Problem #16
 *
 * Given an array nums of n integers and an integer target,
 * find three integers in nums such that the sum is closest to target.
 * Return the sum of the three integers.
 *
 * @param nums Array of integers
 * @param target Target integer
 * @return The sum closest to target
 */
function threeSumClosest(required array nums, required numeric target) {
	arraySort(nums, "numeric");
	var n = arrayLen(nums);
	var closest = nums[1] + nums[2] + nums[3];

	for (var i = 1; i <= n - 2; i++) {
		var left = i + 1;
		var right = n;

		while (left < right) {
			var sum = nums[i] + nums[left] + nums[right];

			if (abs(sum - target) < abs(closest - target)) {
				closest = sum;
			}

			if (sum < target) {
				left++;
			} else if (sum > target) {
				right--;
			} else {
				return sum;
			}
		}
	}

	return closest;
}

function runTests() {
	writeOutput("<h2>3Sum Closest - Test Results</h2>");

	var r1 = threeSumClosest([-1,2,1,-4], 1);
	writeOutput("<p><strong>Test 1:</strong> nums=[-1,2,1,-4], target=1</p>");
	writeOutput("<p>Expected: 2, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 2 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = threeSumClosest([0,0,0], 1);
	writeOutput("<p><strong>Test 2:</strong> nums=[0,0,0], target=1</p>");
	writeOutput("<p>Expected: 0, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = threeSumClosest([1,1,1,0], -100);
	writeOutput("<p><strong>Test 3:</strong> nums=[1,1,1,0], target=-100</p>");
	writeOutput("<p>Expected: 2, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 2 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
