<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>10. Regular Expression Matching — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Regular Expression Matching - LeetCode Problem #10
 *
 * Given an input string s and a pattern p, implement regular expression matching
 * with support for '.' and '*'.
 * '.' matches any single character.
 * '*' matches zero or more of the preceding element.
 *
 * @param s Input string
 * @param p Pattern string
 * @return Boolean true if the entire string matches the pattern
 */
function isMatch(required string s, required string p) {
	// Dynamic programming approach - O(m*n)
	var m = len(s);
	var n = len(p);

	// dp[i][j] = true if s[1..i] matches p[1..j]
	var dp = [];

	for (var i = 0; i <= m; i++) {
		dp[i + 1] = [];

		for (var j = 0; j <= n; j++) {
			dp[i + 1][j + 1] = false;
		}
	}

	dp[1][1] = true;

	// Empty string can match patterns like a*, a*b*, etc.
	for (var j = 2; j <= n; j++) {
		if (mid(p, j, 1) == "*") {
			dp[1][j + 1] = dp[1][j - 1];
		}
	}

	for (var i = 1; i <= m; i++) {
		for (var j = 1; j <= n; j++) {
			var pc = mid(p, j, 1);
			var sc = mid(s, i, 1);

			if (pc == "*") {
				var prevPc = mid(p, j - 1, 1);
				// Zero occurrences of preceding element
				dp[i + 1][j + 1] = dp[i + 1][j - 1];

				// One or more occurrences
				if (prevPc == "." || prevPc == sc) {
					dp[i + 1][j + 1] = dp[i + 1][j + 1] || dp[i][j + 1];
				}
			} else if (pc == "." || pc == sc) {
				dp[i + 1][j + 1] = dp[i][j];
			}
		}
	}

	return dp[m + 1][n + 1];
}

function runTests() {
	writeOutput("<h2>Regular Expression Matching - Test Results</h2>");

	var r1 = isMatch("aa", "a");
	writeOutput("<p><strong>Test 1:</strong> s=""aa"", p=""a""</p>");
	writeOutput("<p>Expected: false, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == false ? "PASS" : "FAIL") & "</p><br>");

	var r2 = isMatch("aa", "a*");
	writeOutput("<p><strong>Test 2:</strong> s=""aa"", p=""a*""</p>");
	writeOutput("<p>Expected: true, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == true ? "PASS" : "FAIL") & "</p><br>");

	var r3 = isMatch("ab", ".*");
	writeOutput("<p><strong>Test 3:</strong> s=""ab"", p="".*""</p>");
	writeOutput("<p>Expected: true, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == true ? "PASS" : "FAIL") & "</p><br>");

	var r4 = isMatch("aab", "c*a*b");
	writeOutput("<p><strong>Test 4:</strong> s=""aab"", p=""c*a*b""</p>");
	writeOutput("<p>Expected: true, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == true ? "PASS" : "FAIL") & "</p><br>");

	var r5 = isMatch("mississippi", "mis*is*p*.");
	writeOutput("<p><strong>Test 5:</strong> s=""mississippi"", p=""mis*is*p*.""</p>");
	writeOutput("<p>Expected: false, Got: " & r5 & "</p>");
	writeOutput("<p>Status: " & (r5 == false ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
