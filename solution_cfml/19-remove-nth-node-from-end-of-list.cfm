<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>19. Remove Nth Node From End Of List — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Remove Nth Node From End of List - LeetCode Problem #19
 *
 * Given the head of a linked list (simulated as an array), remove the nth node
 * from the end of the list and return the resulting list.
 *
 * @param head Array representing the linked list
 * @param n Position from end (1-indexed)
 * @return Array with the nth-from-end element removed
 */
function removeNthFromEnd(required array head, required numeric n) {
	// One-pass two-pointer approach
	var dummy = [0];
	var list = arrayMerge(dummy, head);
	var fast = 1;
	var slow = 1;
	var sz = arrayLen(list);

	// Advance fast pointer by n+1 steps
	for (var i = 0; i <= n; i++) {
		fast++;
	}

	// Move both pointers until fast reaches end
	while (fast <= sz) {
		fast++;
		slow++;
	}

	// slow+1 is the node to remove; rebuild without it
	var result = [];

	for (var i = 2; i <= sz; i++) {
		if (i != slow + 1) {
			arrayAppend(result, list[i]);
		}
	}

	return result;
}

function runTests() {
	writeOutput("<h2>Remove Nth Node From End of List - Test Results</h2>");

	var r1 = removeNthFromEnd([1,2,3,4,5], 2);
	writeOutput("<p><strong>Test 1:</strong> head=[1,2,3,4,5], n=2</p>");
	writeOutput("<p>Expected: [1,2,3,5], Got: [" & arrayToList(r1) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r1) == "1,2,3,5" ? "PASS" : "FAIL") & "</p><br>");

	var r2 = removeNthFromEnd([1], 1);
	writeOutput("<p><strong>Test 2:</strong> head=[1], n=1</p>");
	writeOutput("<p>Expected: [], Got: [" & arrayToList(r2) & "]</p>");
	writeOutput("<p>Status: " & (arrayLen(r2) == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = removeNthFromEnd([1,2], 1);
	writeOutput("<p><strong>Test 3:</strong> head=[1,2], n=1</p>");
	writeOutput("<p>Expected: [1], Got: [" & arrayToList(r3) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r3) == "1" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
