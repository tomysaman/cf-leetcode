<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>14. Longest Common Prefix — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Longest Common Prefix - LeetCode Problem #14
 *
 * Write a function to find the longest common prefix string amongst an array of strings.
 * If there is no common prefix, return an empty string "".
 *
 * @param strs Array of strings
 * @return Longest common prefix string
 */
function longestCommonPrefix(required array strs) {
	if (arrayIsEmpty(strs)) {
		return "";
	}

	var prefix = strs[1];

	for (var i = 2; i <= arrayLen(strs); i++) {
		// Shrink prefix until it matches the start of strs[i]
		while (len(prefix) > 0 && left(strs[i], len(prefix)) != prefix) {
			if (len(prefix) == 1) {
				return "";
			}

			prefix = left(prefix, len(prefix) - 1);
		}

		if (len(prefix) == 0) {
			return "";
		}
	}

	return prefix;
}

function runTests() {
	writeOutput("<h2>Longest Common Prefix - Test Results</h2>");

	var r1 = longestCommonPrefix(["flower","flow","flight"]);
	writeOutput("<p><strong>Test 1:</strong> strs=[""flower"",""flow"",""flight""]</p>");
	writeOutput("<p>Expected: ""fl"", Got: """ & r1 & """</p>");
	writeOutput("<p>Status: " & (r1 == "fl" ? "PASS" : "FAIL") & "</p><br>");

	var r2 = longestCommonPrefix(["dog","racecar","car"]);
	writeOutput("<p><strong>Test 2:</strong> strs=[""dog"",""racecar"",""car""]</p>");
	writeOutput("<p>Expected: """", Got: """ & r2 & """</p>");
	writeOutput("<p>Status: " & (r2 == "" ? "PASS" : "FAIL") & "</p><br>");

	var r3 = longestCommonPrefix(["interview","inter","internal"]);
	writeOutput("<p><strong>Test 3:</strong> strs=[""interview"",""inter"",""internal""]</p>");
	writeOutput("<p>Expected: ""inter"", Got: """ & r3 & """</p>");
	writeOutput("<p>Status: " & (r3 == "inter" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
