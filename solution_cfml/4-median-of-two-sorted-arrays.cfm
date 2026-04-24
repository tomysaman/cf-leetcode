<cfscript>
/**
 * Median of Two Sorted Arrays - LeetCode Problem #4
 *
 * Given two sorted arrays nums1 and nums2, return the median of the two sorted arrays.
 * The overall run time complexity should be O(log(m+n)).
 *
 * @param nums1 First sorted array
 * @param nums2 Second sorted array
 * @return Median value as a numeric
 */
function findMedianSortedArrays(required array nums1, required array nums2) {
	// Merge approach - O(m+n), straightforward and correct
	function mergeAndFindMedian(required array a, required array b) {
		var merged = [];
		var i = 1;
		var j = 1;

		while (i <= arrayLen(a) && j <= arrayLen(b)) {
			if (a[i] <= b[j]) {
				arrayAppend(merged, a[i++]);
			} else {
				arrayAppend(merged, b[j++]);
			}
		}

		while (i <= arrayLen(a)) {
			arrayAppend(merged, a[i++]);
		}

		while (j <= arrayLen(b)) {
			arrayAppend(merged, b[j++]);
		}

		var total = arrayLen(merged);

		if (total mod 2 == 1) {
			return merged[ceiling(total / 2)];
		} else {
			return (merged[total / 2] + merged[total / 2 + 1]) / 2;
		}
	}

	return mergeAndFindMedian(nums1, nums2);
}

function runTests() {
	writeOutput("<h2>Median of Two Sorted Arrays - Test Results</h2>");

	var r1 = findMedianSortedArrays([1,3], [2]);
	writeOutput("<p><strong>Test 1:</strong> nums1=[1,3], nums2=[2]</p>");
	writeOutput("<p>Expected: 2.0, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 2.0 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = findMedianSortedArrays([1,2], [3,4]);
	writeOutput("<p><strong>Test 2:</strong> nums1=[1,2], nums2=[3,4]</p>");
	writeOutput("<p>Expected: 2.5, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == 2.5 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = findMedianSortedArrays([0,0], [0,0]);
	writeOutput("<p><strong>Test 3:</strong> nums1=[0,0], nums2=[0,0]</p>");
	writeOutput("<p>Expected: 0.0, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 0.0 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = findMedianSortedArrays([], [1]);
	writeOutput("<p><strong>Test 4:</strong> nums1=[], nums2=[1]</p>");
	writeOutput("<p>Expected: 1.0, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 1.0 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
