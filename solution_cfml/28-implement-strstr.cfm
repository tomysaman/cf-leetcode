<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>28. Implement Strstr — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Implement strStr() - LeetCode Problem #28
 *
 * Return the index of the first occurrence of needle in haystack,
 * or -1 if needle is not found. Return 0 if needle is empty.
 *
 * @param haystack The string to search in
 * @param needle The string to find
 * @return 0-based index of first occurrence, or -1
 */
function strStr(required string haystack, required string needle) {
	// Approach 1: Brute force - O(m*n)
	function strStrBruteForce(required string h, required string n) {
		if (len(n) == 0) {
			return 0;
		}

		var hLen = len(h);
		var nLen = len(n);

		for (var i = 1; i <= hLen - nLen + 1; i++) {
			if (mid(h, i, nLen) == n) {
				return i - 1;
			}
		}

		return -1;
	}

	return strStrBruteForce(haystack, needle);
}

function runTests() {
	writeOutput("<h2>Implement strStr() - Test Results</h2>");

	var r1 = strStr("hello", "ll");
	writeOutput("<p><strong>Test 1:</strong> haystack=""hello"", needle=""ll""</p>");
	writeOutput("<p>Expected: 2, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 2 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = strStr("aaaaa", "bba");
	writeOutput("<p><strong>Test 2:</strong> haystack=""aaaaa"", needle=""bba""</p>");
	writeOutput("<p>Expected: -1, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == -1 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = strStr("", "");
	writeOutput("<p><strong>Test 3:</strong> haystack="""", needle=""""</p>");
	writeOutput("<p>Expected: 0, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = strStr("mississippi", "issip");
	writeOutput("<p><strong>Test 4:</strong> haystack=""mississippi"", needle=""issip""</p>");
	writeOutput("<p>Expected: 4, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 4 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
