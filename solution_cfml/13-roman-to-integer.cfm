<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>13. Roman To Integer — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Roman to Integer - LeetCode Problem #13
 *
 * Given a Roman numeral string, convert it to an integer.
 *
 * @param s Roman numeral string
 * @return Integer value
 */
function romanToInt(required string s) {
	var map = {
		"I": 1,
		"V": 5,
		"X": 10,
		"L": 50,
		"C": 100,
		"D": 500,
		"M": 1000
	};

	var result = 0;
	var n = len(s);

	for (var i = 1; i <= n; i++) {
		var cur = map[mid(s, i, 1)];
		var next = (i < n) ? map[mid(s, i + 1, 1)] : 0;

		if (cur < next) {
			result -= cur;
		} else {
			result += cur;
		}
	}

	return result;
}

function runTests() {
	writeOutput("<h2>Roman to Integer - Test Results</h2>");

	var r1 = romanToInt("III");
	writeOutput("<p><strong>Test 1:</strong> s=""III""</p>");
	writeOutput("<p>Expected: 3, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 3 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = romanToInt("IV");
	writeOutput("<p><strong>Test 2:</strong> s=""IV""</p>");
	writeOutput("<p>Expected: 4, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == 4 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = romanToInt("IX");
	writeOutput("<p><strong>Test 3:</strong> s=""IX""</p>");
	writeOutput("<p>Expected: 9, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 9 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = romanToInt("LVIII");
	writeOutput("<p><strong>Test 4:</strong> s=""LVIII""</p>");
	writeOutput("<p>Expected: 58, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 58 ? "PASS" : "FAIL") & "</p><br>");

	var r5 = romanToInt("MCMXCIV");
	writeOutput("<p><strong>Test 5:</strong> s=""MCMXCIV""</p>");
	writeOutput("<p>Expected: 1994, Got: " & r5 & "</p>");
	writeOutput("<p>Status: " & (r5 == 1994 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
