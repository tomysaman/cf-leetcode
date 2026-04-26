<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>3. Longest Substring Without Repeating Characters — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Longest Substring Without Repeating Characters - LeetCode Problem #3
 *
 * Given a string s, find the length of the longest substring without repeating characters.
 *
 * @param s Input string
 * @return Length of the longest substring without repeating characters
 */
function lengthOfLongestSubstring(required string s) {
	// Sliding window with hash map approach - O(n)
	var map = {};
	var maxLen = 0;
	var left = 1;
	var n = len(s);

	for (var right = 1; right <= n; right++) {
		var ch = mid(s, right, 1);

		if (structKeyExists(map, ch) && map[ch] >= left) {
			left = map[ch] + 1;
		}

		map[ch] = right;

		if (right - left + 1 > maxLen) {
			maxLen = right - left + 1;
		}
	}

	return maxLen;
}

function runTests() {
	writeOutput("<h2>Longest Substring Without Repeating Characters - Test Results</h2>");

	var r1 = lengthOfLongestSubstring("abcabcbb");
	writeOutput("<p><strong>Test 1:</strong> s = ""abcabcbb""</p>");
	writeOutput("<p>Expected: 3, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 3 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = lengthOfLongestSubstring("bbbbb");
	writeOutput("<p><strong>Test 2:</strong> s = ""bbbbb""</p>");
	writeOutput("<p>Expected: 1, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == 1 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = lengthOfLongestSubstring("pwwkew");
	writeOutput("<p><strong>Test 3:</strong> s = ""pwwkew""</p>");
	writeOutput("<p>Expected: 3, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 3 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = lengthOfLongestSubstring("");
	writeOutput("<p><strong>Test 4:</strong> s = """"</p>");
	writeOutput("<p>Expected: 0, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 0 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
