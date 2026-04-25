<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>5. Longest Palindromic Substring — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Longest Palindromic Substring - LeetCode Problem #5
 *
 * Given a string s, return the longest palindromic substring in s.
 *
 * @param s Input string
 * @return The longest palindromic substring
 */
function longestPalindrome(required string s) {
	// Expand around center approach - O(n^2) time, O(1) space
	var n = len(s);

	if (n == 0) {
		return "";
	}

	var start = 1;
	var maxLen = 1;

	function expandAroundCenter(required string str, required numeric left, required numeric right) {
		while (left >= 1 && right <= len(str) && mid(str, left, 1) == mid(str, right, 1)) {
			left--;
			right++;
		}
		// Return [start, length] of the valid palindrome found
		return [left + 1, right - left - 1];
	}

	for (var i = 1; i <= n; i++) {
		// Odd length palindromes
		var odd = expandAroundCenter(s, i, i);

		if (odd[2] > maxLen) {
			maxLen = odd[2];
			start = odd[1];
		}

		// Even length palindromes
		if (i < n) {
			var even = expandAroundCenter(s, i, i + 1);

			if (even[2] > maxLen) {
				maxLen = even[2];
				start = even[1];
			}
		}
	}

	return mid(s, start, maxLen);
}

function runTests() {
	writeOutput("<h2>Longest Palindromic Substring - Test Results</h2>");

	var r1 = longestPalindrome("babad");
	writeOutput("<p><strong>Test 1:</strong> s = ""babad""</p>");
	writeOutput("<p>Expected: ""bab"" or ""aba"", Got: """ & r1 & """</p>");
	writeOutput("<p>Status: " & ((r1 == "bab" || r1 == "aba") ? "PASS" : "FAIL") & "</p><br>");

	var r2 = longestPalindrome("cbbd");
	writeOutput("<p><strong>Test 2:</strong> s = ""cbbd""</p>");
	writeOutput("<p>Expected: ""bb"", Got: """ & r2 & """</p>");
	writeOutput("<p>Status: " & (r2 == "bb" ? "PASS" : "FAIL") & "</p><br>");

	var r3 = longestPalindrome("a");
	writeOutput("<p><strong>Test 3:</strong> s = ""a""</p>");
	writeOutput("<p>Expected: ""a"", Got: """ & r3 & """</p>");
	writeOutput("<p>Status: " & (r3 == "a" ? "PASS" : "FAIL") & "</p><br>");

	var r4 = longestPalindrome("ac");
	writeOutput("<p><strong>Test 4:</strong> s = ""ac""</p>");
	writeOutput("<p>Expected: ""a"" or ""c"", Got: """ & r4 & """</p>");
	writeOutput("<p>Status: " & (len(r4) == 1 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
