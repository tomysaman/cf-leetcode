<cfscript>
/**
 * Remove Element - LeetCode Problem #27
 *
 * Given an array nums and a value val, remove all occurrences of val in-place
 * and return the new length.
 *
 * @param nums Array of integers
 * @param val Value to remove
 * @return New length after removing all instances of val
 */
function removeElement(required array nums, required numeric val) {
	var k = 0;

	for (var i = 1; i <= arrayLen(nums); i++) {
		if (nums[i] != val) {
			k++;
			nums[k] = nums[i];
		}
	}

	return k;
}

function runTests() {
	writeOutput("<h2>Remove Element - Test Results</h2>");

	var a1 = [3,2,2,3];
	var r1 = removeElement(a1, 3);
	var a1display = [];
	for (var idx = 1; idx <= r1; idx++) { arrayAppend(a1display, a1[idx]); }
	writeOutput("<p><strong>Test 1:</strong> nums=[3,2,2,3], val=3</p>");
	writeOutput("<p>Expected length: 2 with elements [2,2], Got: " & r1 & " | Elements: [" & arrayToList(a1display) & "]</p>");
	writeOutput("<p>Status: " & (r1 == 2 ? "PASS" : "FAIL") & "</p><br>");

	var a2 = [0,1,2,2,3,0,4,2];
	var r2 = removeElement(a2, 2);
	var a2display = [];
	for (var idx = 1; idx <= r2; idx++) { arrayAppend(a2display, a2[idx]); }
	writeOutput("<p><strong>Test 2:</strong> nums=[0,1,2,2,3,0,4,2], val=2</p>");
	writeOutput("<p>Expected length: 5, Got: " & r2 & " | Elements: [" & arrayToList(a2display) & "]</p>");
	writeOutput("<p>Status: " & (r2 == 5 ? "PASS" : "FAIL") & "</p><br>");

	var a3 = [1];
	var r3 = removeElement(a3, 1);
	writeOutput("<p><strong>Test 3:</strong> nums=[1], val=1</p>");
	writeOutput("<p>Expected length: 0, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 0 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
