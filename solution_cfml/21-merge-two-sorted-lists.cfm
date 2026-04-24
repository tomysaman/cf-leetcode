<cfscript>
/**
 * Merge Two Sorted Lists - LeetCode Problem #21
 *
 * Merge two sorted linked lists (represented as sorted arrays) and return
 * it as a new sorted list.
 *
 * @param l1 First sorted array
 * @param l2 Second sorted array
 * @return Merged sorted array
 */
function mergeTwoLists(required array l1, required array l2) {
	var result = [];
	var i = 1;
	var j = 1;

	while (i <= arrayLen(l1) && j <= arrayLen(l2)) {
		if (l1[i] <= l2[j]) {
			arrayAppend(result, l1[i++]);
		} else {
			arrayAppend(result, l2[j++]);
		}
	}

	while (i <= arrayLen(l1)) {
		arrayAppend(result, l1[i++]);
	}

	while (j <= arrayLen(l2)) {
		arrayAppend(result, l2[j++]);
	}

	return result;
}

function runTests() {
	writeOutput("<h2>Merge Two Sorted Lists - Test Results</h2>");

	var r1 = mergeTwoLists([1,2,4], [1,3,4]);
	writeOutput("<p><strong>Test 1:</strong> l1=[1,2,4], l2=[1,3,4]</p>");
	writeOutput("<p>Expected: [1,1,2,3,4,4], Got: [" & arrayToList(r1) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r1) == "1,1,2,3,4,4" ? "PASS" : "FAIL") & "</p><br>");

	var r2 = mergeTwoLists([], []);
	writeOutput("<p><strong>Test 2:</strong> l1=[], l2=[]</p>");
	writeOutput("<p>Expected: [], Got: [" & arrayToList(r2) & "]</p>");
	writeOutput("<p>Status: " & (arrayLen(r2) == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = mergeTwoLists([], [0]);
	writeOutput("<p><strong>Test 3:</strong> l1=[], l2=[0]</p>");
	writeOutput("<p>Expected: [0], Got: [" & arrayToList(r3) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r3) == "0" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
