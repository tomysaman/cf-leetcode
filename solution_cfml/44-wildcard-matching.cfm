<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>44. Wildcard Matching — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Wildcard Matching - LeetCode Problem #44
 *
 * Given an input string s and a pattern p, implement wildcard pattern matching.
 * '?' matches any single character.
 * '*' matches any sequence of characters (including empty).
 * Matching must cover the entire string.
 *
 * @param s Input string
 * @param p Pattern string
 * @return Boolean true if s matches p
 */
function isMatch(required string s, required string p) {
	// Dynamic programming approach
	var m = len(s);
	var n = len(p);

	var dp = [];

	for (var i = 0; i <= m; i++) {
		dp[i + 1] = [];

		for (var j = 0; j <= n; j++) {
			dp[i + 1][j + 1] = false;
		}
	}

	dp[1][1] = true;

	// '*' at beginning can match empty string
	for (var j = 1; j <= n; j++) {
		if (mid(p, j, 1) == "*") {
			dp[1][j + 1] = dp[1][j];
		}
	}

	for (var i = 1; i <= m; i++) {
		for (var j = 1; j <= n; j++) {
			var pc = mid(p, j, 1);
			var sc = mid(s, i, 1);

			if (pc == "*") {
				// '*' matches empty (dp[i+1][j]) or one more char (dp[i][j+1])
				dp[i + 1][j + 1] = dp[i + 1][j] || dp[i][j + 1];
			} else if (pc == "?" || pc == sc) {
				dp[i + 1][j + 1] = dp[i][j];
			}
		}
	}

	return dp[m + 1][n + 1];
}

function runTests() {
	writeOutput("<h2>Wildcard Matching - Test Results</h2>");

	var r1 = isMatch("aa", "a");
	writeOutput("<p><strong>Test 1:</strong> s=""aa"", p=""a""</p>");
	writeOutput("<p>Expected: false, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == false ? "PASS" : "FAIL") & "</p><br>");

	var r2 = isMatch("aa", "*");
	writeOutput("<p><strong>Test 2:</strong> s=""aa"", p=""*""</p>");
	writeOutput("<p>Expected: true, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == true ? "PASS" : "FAIL") & "</p><br>");

	var r3 = isMatch("cb", "?a");
	writeOutput("<p><strong>Test 3:</strong> s=""cb"", p=""?a""</p>");
	writeOutput("<p>Expected: false, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == false ? "PASS" : "FAIL") & "</p><br>");

	var r4 = isMatch("adceb", "*a*b");
	writeOutput("<p><strong>Test 4:</strong> s=""adceb"", p=""*a*b""</p>");
	writeOutput("<p>Expected: true, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == true ? "PASS" : "FAIL") & "</p><br>");

	var r5 = isMatch("acdcb", "a*c?b");
	writeOutput("<p><strong>Test 5:</strong> s=""acdcb"", p=""a*c?b""</p>");
	writeOutput("<p>Expected: false, Got: " & r5 & "</p>");
	writeOutput("<p>Status: " & (r5 == false ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
