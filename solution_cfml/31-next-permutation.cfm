<cfscript>
/**
 * Next Permutation - LeetCode Problem #31
 *
 * Rearrange numbers into the lexicographically next greater permutation.
 * If not possible, rearrange to the lowest order (ascending sort).
 * Modification is in-place.
 *
 * @param nums Array of integers (modified in-place)
 * @return The modified array
 */
function nextPermutation(required array nums) {
	var n = arrayLen(nums);

	// Step 1: Find the largest index i such that nums[i] < nums[i+1]
	var i = n - 1;

	while (i >= 1 && nums[i] >= nums[i + 1]) {
		i--;
	}

	if (i >= 1) {
		// Step 2: Find the largest index j > i such that nums[i] < nums[j]
		var j = n;

		while (nums[j] <= nums[i]) {
			j--;
		}

		// Step 3: Swap nums[i] and nums[j]
		var tmp = nums[i];
		nums[i] = nums[j];
		nums[j] = tmp;
	}

	// Step 4: Reverse the suffix starting at nums[i+1]
	var left = i + 1;
	var right = n;

	while (left < right) {
		var tmp2 = nums[left];
		nums[left] = nums[right];
		nums[right] = tmp2;
		left++;
		right--;
	}

	return nums;
}

function runTests() {
	writeOutput("<h2>Next Permutation - Test Results</h2>");

	var a1 = [1,2,3];
	var r1 = nextPermutation(a1);
	writeOutput("<p><strong>Test 1:</strong> nums=[1,2,3]</p>");
	writeOutput("<p>Expected: [1,3,2], Got: [" & arrayToList(r1) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r1) == "1,3,2" ? "PASS" : "FAIL") & "</p><br>");

	var a2 = [3,2,1];
	var r2 = nextPermutation(a2);
	writeOutput("<p><strong>Test 2:</strong> nums=[3,2,1]</p>");
	writeOutput("<p>Expected: [1,2,3], Got: [" & arrayToList(r2) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r2) == "1,2,3" ? "PASS" : "FAIL") & "</p><br>");

	var a3 = [1,1,5];
	var r3 = nextPermutation(a3);
	writeOutput("<p><strong>Test 3:</strong> nums=[1,1,5]</p>");
	writeOutput("<p>Expected: [1,5,1], Got: [" & arrayToList(r3) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r3) == "1,5,1" ? "PASS" : "FAIL") & "</p><br>");

	var a4 = [1];
	var r4 = nextPermutation(a4);
	writeOutput("<p><strong>Test 4:</strong> nums=[1]</p>");
	writeOutput("<p>Expected: [1], Got: [" & arrayToList(r4) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r4) == "1" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
