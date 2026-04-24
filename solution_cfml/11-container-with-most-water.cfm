<cfscript>
/**
 * Container With Most Water - LeetCode Problem #11
 *
 * Given n non-negative integers representing heights of vertical lines,
 * find two lines that together with the x-axis form a container that holds the most water.
 *
 * @param height Array of non-negative integers
 * @return Maximum area of water the container can contain
 */
function maxArea(required array height) {
	// Two-pointer approach - O(n)
	function maxAreaTwoPointers(required array h) {
		var left = 1;
		var right = arrayLen(h);
		var maxWater = 0;

		while (left < right) {
			var water = min(h[left], h[right]) * (right - left);

			if (water > maxWater) {
				maxWater = water;
			}

			if (h[left] < h[right]) {
				left++;
			} else {
				right--;
			}
		}

		return maxWater;
	}

	return maxAreaTwoPointers(height);
}

function runTests() {
	writeOutput("<h2>Container With Most Water - Test Results</h2>");

	var r1 = maxArea([1,8,6,2,5,4,8,3,7]);
	writeOutput("<p><strong>Test 1:</strong> height=[1,8,6,2,5,4,8,3,7]</p>");
	writeOutput("<p>Expected: 49, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 49 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = maxArea([1,1]);
	writeOutput("<p><strong>Test 2:</strong> height=[1,1]</p>");
	writeOutput("<p>Expected: 1, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == 1 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = maxArea([4,3,2,1,4]);
	writeOutput("<p><strong>Test 3:</strong> height=[4,3,2,1,4]</p>");
	writeOutput("<p>Expected: 16, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 16 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = maxArea([1,2,1]);
	writeOutput("<p><strong>Test 4:</strong> height=[1,2,1]</p>");
	writeOutput("<p>Expected: 2, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 2 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
