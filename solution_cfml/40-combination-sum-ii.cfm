<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>40. Combination Sum Ii — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Combination Sum II - LeetCode Problem #40
 *
 * Given a collection of candidate numbers (may contain duplicates) and a target,
 * find all unique combinations where numbers sum to target. Each number may only
 * be used once per combination.
 *
 * @param candidates Array of positive integers (may contain duplicates)
 * @param target Target sum
 * @return Array of unique combinations
 */
function combinationSum2(required array candidates, required numeric target) {
	var result = [];
	arraySort(candidates, "numeric");

	// Pass candidates and result explicitly — Lucee nested functions cannot close over outer vars
	function btCombSum2(
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

			// Skip duplicates at the same recursion level
			if (i > startIdx && cands[i] == cands[i - 1]) {
				continue;
			}

			arrayAppend(current, cands[i]);
			btCombSum2(current, remaining - cands[i], i + 1, cands, output);
			arrayDeleteAt(current, arrayLen(current));
		}
	}

	btCombSum2([], target, 1, candidates, result);

	return result;
}

function runTests() {
	writeOutput("<h2>Combination Sum II - Test Results</h2>");

	var r1 = combinationSum2([10,1,2,7,6,1,5], 8);
	writeOutput("<p><strong>Test 1:</strong> candidates=[10,1,2,7,6,1,5], target=8</p>");
	writeOutput("<p>Expected: [[1,1,6],[1,2,5],[1,7],[2,6]], Got: " & arrayLen(r1) & " combination(s)</p>");

	for (var combo in r1) {
		writeOutput("<p>  [" & arrayToList(combo) & "]</p>");
	}

	writeOutput("<p>Status: " & (arrayLen(r1) == 4 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = combinationSum2([2,5,2,1,2], 5);
	writeOutput("<p><strong>Test 2:</strong> candidates=[2,5,2,1,2], target=5</p>");
	writeOutput("<p>Expected: [[1,2,2],[5]], Got: " & arrayLen(r2) & " combination(s)</p>");

	for (var combo in r2) {
		writeOutput("<p>  [" & arrayToList(combo) & "]</p>");
	}

	writeOutput("<p>Status: " & (arrayLen(r2) == 2 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
