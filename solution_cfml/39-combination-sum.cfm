<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>39. Combination Sum — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Combination Sum - LeetCode Problem #39
 *
 * Given an array of distinct integers and a target, return all unique combinations
 * where the chosen numbers sum to target. The same number may be chosen unlimited times.
 *
 * @param candidates Array of distinct positive integers
 * @param target Target sum
 * @return Array of arrays, each a valid combination
 */
function combinationSum(required array candidates, required numeric target) {
	var result = [];
	arraySort(candidates, "numeric");

	// Pass candidates and result explicitly — Lucee nested functions cannot close over outer vars
	function btCombSum(
		required array current,
		required numeric remaining,
		required numeric startIdx,
		required array cands,
		required array output
	) {
		if (remaining == 0) {
			arrayAppend(output, duplicate(current));
			return;
		}

		for (var i = startIdx; i <= arrayLen(cands); i++) {
			if (cands[i] > remaining) {
				break;
			}

			arrayAppend(current, cands[i]);
			btCombSum(current, remaining - cands[i], i, cands, output);
			arrayDeleteAt(current, arrayLen(current));
		}
	}

	btCombSum([], target, 1, candidates, result);

	return result;
}

function runTests() {
	writeOutput("<h2>Combination Sum - Test Results</h2>");

	var r1 = combinationSum([2,3,6,7], 7);
	writeOutput("<p><strong>Test 1:</strong> candidates=[2,3,6,7], target=7</p>");
	writeOutput("<p>Expected: [[2,2,3],[7]], Got: " & arrayLen(r1) & " combination(s)</p>");

	for (var combo in r1) {
		writeOutput("<p>  [" & arrayToList(combo) & "]</p>");
	}

	writeOutput("<p>Status: " & (arrayLen(r1) == 2 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = combinationSum([2,3,5], 8);
	writeOutput("<p><strong>Test 2:</strong> candidates=[2,3,5], target=8</p>");
	writeOutput("<p>Expected: [[2,2,2,2],[2,3,3],[3,5]], Got: " & arrayLen(r2) & " combination(s)</p>");

	for (var combo in r2) {
		writeOutput("<p>  [" & arrayToList(combo) & "]</p>");
	}

	writeOutput("<p>Status: " & (arrayLen(r2) == 3 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
