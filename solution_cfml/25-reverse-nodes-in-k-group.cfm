<cfscript>
/**
 * Reverse Nodes in k-Group - LeetCode Problem #25
 *
 * Given a linked list (simulated as array), reverse the nodes k at a time.
 * If remaining nodes are fewer than k, leave them as-is.
 *
 * @param head Array representing the linked list
 * @param k Group size
 * @return Array with groups of k reversed
 */
function reverseKGroup(required array head, required numeric k) {
	var n = arrayLen(head);
	var result = [];

	for (var start = 1; start <= n; start += k) {
		var end = min(start + k - 1, n);

		if (end - start + 1 == k) {
			// Reverse this group
			for (var i = end; i >= start; i--) {
				arrayAppend(result, head[i]);
			}
		} else {
			// Not a full group — keep as-is
			for (var i = start; i <= end; i++) {
				arrayAppend(result, head[i]);
			}
		}
	}

	return result;
}

function runTests() {
	writeOutput("<h2>Reverse Nodes in k-Group - Test Results</h2>");

	var r1 = reverseKGroup([1,2,3,4,5], 2);
	writeOutput("<p><strong>Test 1:</strong> head=[1,2,3,4,5], k=2</p>");
	writeOutput("<p>Expected: [2,1,4,3,5], Got: [" & arrayToList(r1) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r1) == "2,1,4,3,5" ? "PASS" : "FAIL") & "</p><br>");

	var r2 = reverseKGroup([1,2,3,4,5], 3);
	writeOutput("<p><strong>Test 2:</strong> head=[1,2,3,4,5], k=3</p>");
	writeOutput("<p>Expected: [3,2,1,4,5], Got: [" & arrayToList(r2) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r2) == "3,2,1,4,5" ? "PASS" : "FAIL") & "</p><br>");

	var r3 = reverseKGroup([1,2,3,4,5], 1);
	writeOutput("<p><strong>Test 3:</strong> head=[1,2,3,4,5], k=1</p>");
	writeOutput("<p>Expected: [1,2,3,4,5], Got: [" & arrayToList(r3) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r3) == "1,2,3,4,5" ? "PASS" : "FAIL") & "</p><br>");

	var r4 = reverseKGroup([1], 1);
	writeOutput("<p><strong>Test 4:</strong> head=[1], k=1</p>");
	writeOutput("<p>Expected: [1], Got: [" & arrayToList(r4) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r4) == "1" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
