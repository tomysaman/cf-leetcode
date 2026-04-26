<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>42. Trapping Rain Water — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Trapping Rain Water - LeetCode Problem #42
 *
 * Given n non-negative integers representing an elevation map (width 1 each),
 * compute how much water it can trap after raining.
 *
 * @param height Array of non-negative integers representing heights
 * @return Total units of water trapped
 */
function trap(required array height) {
	// Two-pointer approach - O(n) time, O(1) space
	function trapTwoPointers(required array h) {
		var n = arrayLen(h);

		if (n == 0) {
			return 0;
		}

		var left = 1;
		var right = n;
		var leftMax = 0;
		var rightMax = 0;
		var water = 0;

		while (left < right) {
			if (h[left] < h[right]) {
				if (h[left] >= leftMax) {
					leftMax = h[left];
				} else {
					water += leftMax - h[left];
				}

				left++;
			} else {
				if (h[right] >= rightMax) {
					rightMax = h[right];
				} else {
					water += rightMax - h[right];
				}

				right--;
			}
		}

		return water;
	}

	return trapTwoPointers(height);
}

function runTests() {
	writeOutput("<h2>Trapping Rain Water - Test Results</h2>");

	var r1 = trap([0,1,0,2,1,0,1,3,2,1,2,1]);
	writeOutput("<p><strong>Test 1:</strong> height=[0,1,0,2,1,0,1,3,2,1,2,1]</p>");
	writeOutput("<p>Expected: 6, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 6 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = trap([4,2,0,3,2,5]);
	writeOutput("<p><strong>Test 2:</strong> height=[4,2,0,3,2,5]</p>");
	writeOutput("<p>Expected: 9, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == 9 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = trap([]);
	writeOutput("<p><strong>Test 3:</strong> height=[]</p>");
	writeOutput("<p>Expected: 0, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 0 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
