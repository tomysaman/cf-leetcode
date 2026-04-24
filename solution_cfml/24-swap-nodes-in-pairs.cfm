<cfscript>
/**
 * Swap Nodes in Pairs - LeetCode Problem #24
 *
 * Given a linked list (simulated as array), swap every two adjacent nodes.
 * Only nodes may be changed (simulated by swapping values in adjacent pairs).
 *
 * @param head Array representing the linked list
 * @return Array with adjacent pairs swapped
 */
function swapPairs(required array head) {
	var result = duplicate(head);
	var n = arrayLen(result);

	for (var i = 1; i <= n - 1; i += 2) {
		var tmp = result[i];
		result[i] = result[i + 1];
		result[i + 1] = tmp;
	}

	return result;
}

function runTests() {
	writeOutput("<h2>Swap Nodes in Pairs - Test Results</h2>");

	var r1 = swapPairs([1,2,3,4]);
	writeOutput("<p><strong>Test 1:</strong> head=[1,2,3,4]</p>");
	writeOutput("<p>Expected: [2,1,4,3], Got: [" & arrayToList(r1) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r1) == "2,1,4,3" ? "PASS" : "FAIL") & "</p><br>");

	var r2 = swapPairs([]);
	writeOutput("<p><strong>Test 2:</strong> head=[]</p>");
	writeOutput("<p>Expected: [], Got: [" & arrayToList(r2) & "]</p>");
	writeOutput("<p>Status: " & (arrayLen(r2) == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = swapPairs([1]);
	writeOutput("<p><strong>Test 3:</strong> head=[1]</p>");
	writeOutput("<p>Expected: [1], Got: [" & arrayToList(r3) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r3) == "1" ? "PASS" : "FAIL") & "</p><br>");

	var r4 = swapPairs([1,2,3]);
	writeOutput("<p><strong>Test 4:</strong> head=[1,2,3]</p>");
	writeOutput("<p>Expected: [2,1,3], Got: [" & arrayToList(r4) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r4) == "2,1,3" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
