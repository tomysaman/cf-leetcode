<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>29. Divide Two Integers — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Divide Two Integers - LeetCode Problem #29
 *
 * Divide two integers without using multiplication, division, or mod operator.
 * Return the quotient, truncated toward zero.
 * Clamp to 32-bit signed integer range on overflow.
 *
 * @param dividend The dividend
 * @param divisor The divisor
 * @return Integer quotient
 */
function divide(required numeric dividend, required numeric divisor) {
	var INT_MAX = 2147483647;
	var INT_MIN = -2147483648;

	if (dividend == INT_MIN && divisor == -1) {
		return INT_MAX;
	}

	var sign = ((dividend > 0) == (divisor > 0)) ? 1 : -1;
	var a = abs(dividend);
	var b = abs(divisor);
	var result = 0;

	// Bit-shift based subtraction - O(log^2 n)
	while (a >= b) {
		var temp = b;
		var multiple = 1;

		while (a >= temp * 2) {
			temp *= 2;
			multiple *= 2;
		}

		a -= temp;
		result += multiple;
	}

	return sign * result;
}

function runTests() {
	writeOutput("<h2>Divide Two Integers - Test Results</h2>");

	var r1 = divide(10, 3);
	writeOutput("<p><strong>Test 1:</strong> dividend=10, divisor=3</p>");
	writeOutput("<p>Expected: 3, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 3 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = divide(7, -3);
	writeOutput("<p><strong>Test 2:</strong> dividend=7, divisor=-3</p>");
	writeOutput("<p>Expected: -2, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == -2 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = divide(0, 1);
	writeOutput("<p><strong>Test 3:</strong> dividend=0, divisor=1</p>");
	writeOutput("<p>Expected: 0, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = divide(-2147483648, -1);
	writeOutput("<p><strong>Test 4:</strong> dividend=-2147483648, divisor=-1 (overflow)</p>");
	writeOutput("<p>Expected: 2147483647, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 2147483647 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
