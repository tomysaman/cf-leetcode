<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>12. Integer To Roman — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Integer to Roman - LeetCode Problem #12
 *
 * Convert an integer to a Roman numeral.
 * Input is guaranteed to be in range [1, 3999].
 *
 * @param num Integer to convert
 * @return Roman numeral string
 */
function intToRoman(required numeric num) {
	var values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
	var symbols = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];
	var result = "";
	var n = num;

	for (var i = 1; i <= arrayLen(values); i++) {
		while (n >= values[i]) {
			result &= symbols[i];
			n -= values[i];
		}
	}

	return result;
}

function runTests() {
	writeOutput("<h2>Integer to Roman - Test Results</h2>");

	var r1 = intToRoman(3);
	writeOutput("<p><strong>Test 1:</strong> num=3</p>");
	writeOutput("<p>Expected: ""III"", Got: """ & r1 & """</p>");
	writeOutput("<p>Status: " & (r1 == "III" ? "PASS" : "FAIL") & "</p><br>");

	var r2 = intToRoman(4);
	writeOutput("<p><strong>Test 2:</strong> num=4</p>");
	writeOutput("<p>Expected: ""IV"", Got: """ & r2 & """</p>");
	writeOutput("<p>Status: " & (r2 == "IV" ? "PASS" : "FAIL") & "</p><br>");

	var r3 = intToRoman(58);
	writeOutput("<p><strong>Test 3:</strong> num=58</p>");
	writeOutput("<p>Expected: ""LVIII"", Got: """ & r3 & """</p>");
	writeOutput("<p>Status: " & (r3 == "LVIII" ? "PASS" : "FAIL") & "</p><br>");

	var r4 = intToRoman(1994);
	writeOutput("<p><strong>Test 4:</strong> num=1994</p>");
	writeOutput("<p>Expected: ""MCMXCIV"", Got: """ & r4 & """</p>");
	writeOutput("<p>Status: " & (r4 == "MCMXCIV" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
