<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>23. Merge K Sorted Lists — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Merge k Sorted Lists - LeetCode Problem #23
 *
 * You are given an array of k sorted arrays. Merge all into one sorted array.
 * (Linked lists simulated as arrays.)
 *
 * @param lists Array of sorted arrays
 * @return Single merged sorted array
 */
function mergeKLists(required array lists) {
	if (arrayIsEmpty(lists)) {
		return [];
	}

	// Divide and conquer: merge pairs until one list remains
	function mergeTwoSorted(required array a, required array b) {
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

		return merged;
	}

	var current = duplicate(lists);

	while (arrayLen(current) > 1) {
		var next = [];

		for (var i = 1; i <= arrayLen(current); i += 2) {
			if (i + 1 <= arrayLen(current)) {
				arrayAppend(next, mergeTwoSorted(current[i], current[i + 1]));
			} else {
				arrayAppend(next, current[i]);
			}
		}

		current = next;
	}

	return current[1];
}

function runTests() {
	writeOutput("<h2>Merge k Sorted Lists - Test Results</h2>");

	var r1 = mergeKLists([[1,4,5],[1,3,4],[2,6]]);
	writeOutput("<p><strong>Test 1:</strong> lists=[[1,4,5],[1,3,4],[2,6]]</p>");
	writeOutput("<p>Expected: [1,1,2,3,4,4,5,6], Got: [" & arrayToList(r1) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r1) == "1,1,2,3,4,4,5,6" ? "PASS" : "FAIL") & "</p><br>");

	var r2 = mergeKLists([]);
	writeOutput("<p><strong>Test 2:</strong> lists=[]</p>");
	writeOutput("<p>Expected: [], Got: [" & arrayToList(r2) & "]</p>");
	writeOutput("<p>Status: " & (arrayLen(r2) == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = mergeKLists([[]]);
	writeOutput("<p><strong>Test 3:</strong> lists=[[]]</p>");
	writeOutput("<p>Expected: [], Got: [" & arrayToList(r3) & "]</p>");
	writeOutput("<p>Status: " & (arrayLen(r3) == 0 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
