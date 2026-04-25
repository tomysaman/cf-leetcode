<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>7. Reverse Integer — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Reverse Integer - LeetCode Problem #7
 *
 * Given a 32-bit signed integer, reverse digits of an integer.
 * Return 0 if the reversed integer overflows.
 *
 * @param x Input integer
 * @return Reversed integer, or 0 on overflow
 */
function reverseInt(required numeric x) {
	var INT_MAX = 2147483647;
	var INT_MIN = -2147483648;

	var sign = (x < 0) ? -1 : 1;
	var absStr = numberFormat(abs(x), "0");
	var digits = listToArray(listChangeDelims(absStr, ",", ""));
	var reversed = 0;

	for (var d in digits) {
		reversed = reversed * 10 + val(d);
	}

	reversed *= sign;

	if (reversed > INT_MAX || reversed < INT_MIN) {
		return 0;
	}

	return reversed;
}

function runTests() {
	writeOutput("<h2>Reverse Integer - Test Results</h2>");

	var r1 = reverseInt(123);
	writeOutput("<p><strong>Test 1:</strong> x = 123</p>");
	writeOutput("<p>Expected: 321, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 321 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = reverseInt(-123);
	writeOutput("<p><strong>Test 2:</strong> x = -123</p>");
	writeOutput("<p>Expected: -321, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == -321 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = reverseInt(120);
	writeOutput("<p><strong>Test 3:</strong> x = 120</p>");
	writeOutput("<p>Expected: 21, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 21 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = reverseInt(1534236469);
	writeOutput("<p><strong>Test 4:</strong> x = 1534236469 (overflow)</p>");
	writeOutput("<p>Expected: 0, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 0 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
