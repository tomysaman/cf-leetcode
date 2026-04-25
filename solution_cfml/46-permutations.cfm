<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>46. Permutations — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Permutations - LeetCode Problem #46
 *
 * Given a collection of distinct integers, return all possible permutations.
 *
 * @param nums Array of distinct integers
 * @return Array of all permutations
 */
function permute(required array nums) {
	var result = [];

	// Pass result explicitly — Lucee nested functions cannot close over outer vars
	function btPermute(required array current, required array remaining, required array output) {
		if (arrayIsEmpty(remaining)) {
			arrayAppend(output, duplicate(current));
			return;
		}

		for (var i = 1; i <= arrayLen(remaining); i++) {
			arrayAppend(current, remaining[i]);
			var newRemaining = duplicate(remaining);
			arrayDeleteAt(newRemaining, i);
			btPermute(current, newRemaining, output);
			arrayDeleteAt(current, arrayLen(current));
		}
	}

	btPermute([], nums, result);

	return result;
}

function runTests() {
	writeOutput("<h2>Permutations - Test Results</h2>");

	var r1 = permute([1,2,3]);
	writeOutput("<p><strong>Test 1:</strong> nums=[1,2,3]</p>");
	writeOutput("<p>Expected: 6 permutations, Got: " & arrayLen(r1) & " permutation(s)</p>");

	for (var perm in r1) {
		writeOutput("<p>  [" & arrayToList(perm) & "]</p>");
	}

	writeOutput("<p>Status: " & (arrayLen(r1) == 6 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = permute([0,1]);
	writeOutput("<p><strong>Test 2:</strong> nums=[0,1]</p>");
	writeOutput("<p>Expected: 2 permutations, Got: " & arrayLen(r2) & " permutation(s)</p>");

	for (var perm in r2) {
		writeOutput("<p>  [" & arrayToList(perm) & "]</p>");
	}

	writeOutput("<p>Status: " & (arrayLen(r2) == 2 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = permute([1]);
	writeOutput("<p><strong>Test 3:</strong> nums=[1]</p>");
	writeOutput("<p>Expected: 1 permutation [[1]], Got: " & arrayLen(r3) & " permutation(s)</p>");
	writeOutput("<p>Status: " & (arrayLen(r3) == 1 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
