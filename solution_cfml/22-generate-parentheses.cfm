<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>22. Generate Parentheses — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Generate Parentheses - LeetCode Problem #22
 *
 * Given n pairs of parentheses, generate all combinations of well-formed parentheses.
 *
 * @param n Number of pairs of parentheses
 * @return Array of all valid combinations
 */
function generateParenthesis(required numeric n) {
	var result = [];

	// Pass n and result explicitly so the nested function can access them
	function btParens(
		required string current,
		required numeric open,
		required numeric close,
		required numeric pairs,
		required array output
	) {
		if (len(current) == pairs * 2) {
			arrayAppend(output, current);
			return;
		}

		if (open < pairs) {
			btParens(current & "(", open + 1, close, pairs, output);
		}

		if (close < open) {
			btParens(current & ")", open, close + 1, pairs, output);
		}
	}

	btParens("", 0, 0, n, result);

	return result;
}

function runTests() {
	writeOutput("<h2>Generate Parentheses - Test Results</h2>");

	var r1 = generateParenthesis(3);
	writeOutput("<p><strong>Test 1:</strong> n=3</p>");
	writeOutput("<p>Expected: 5 combinations [""((()))"",""(()())"",""(())()"",""()(())"",""()()()""]</p>");
	writeOutput("<p>Got: [" & arrayToList(r1) & "]</p>");
	writeOutput("<p>Status: " & (arrayLen(r1) == 5 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = generateParenthesis(1);
	writeOutput("<p><strong>Test 2:</strong> n=1</p>");
	writeOutput("<p>Expected: [""()""], Got: [" & arrayToList(r2) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r2) == "()" ? "PASS" : "FAIL") & "</p><br>");

	var r3 = generateParenthesis(2);
	writeOutput("<p><strong>Test 3:</strong> n=2</p>");
	writeOutput("<p>Expected: 2 combinations, Got: " & arrayLen(r3) & " combinations [" & arrayToList(r3) & "]</p>");
	writeOutput("<p>Status: " & (arrayLen(r3) == 2 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
