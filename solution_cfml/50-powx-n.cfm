<cfscript>
/**
 * Pow(x, n) - LeetCode Problem #50
 *
 * Implement pow(x, n), which calculates x raised to the power n.
 * Uses fast exponentiation (binary exponentiation) - O(log n).
 *
 * @param x Base (float)
 * @param n Exponent (integer, can be negative)
 * @return x^n
 */
function myPow(required numeric x, required numeric n) {
	// Fast exponentiation - O(log n)
	function fastPow(required numeric base, required numeric exp) {
		if (exp == 0) {
			return 1.0;
		}

		if (exp mod 2 == 0) {
			var half = fastPow(base, exp / 2);
			return half * half;
		} else {
			return base * fastPow(base, exp - 1);
		}
	}

	if (n < 0) {
		return 1.0 / fastPow(x, -n);
	}

	return fastPow(x, n);
}

function runTests() {
	writeOutput("<h2>Pow(x, n) - Test Results</h2>");

	var r1 = myPow(2.0, 10);
	writeOutput("<p><strong>Test 1:</strong> x=2.0, n=10</p>");
	writeOutput("<p>Expected: 1024.0, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 1024.0 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = myPow(2.1, 3);
	var expected2 = 9.261;
	writeOutput("<p><strong>Test 2:</strong> x=2.1, n=3</p>");
	writeOutput("<p>Expected: ~9.261, Got: " & numberFormat(r2, "0.000") & "</p>");
	writeOutput("<p>Status: " & (abs(r2 - expected2) < 0.001 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = myPow(2.0, -2);
	writeOutput("<p><strong>Test 3:</strong> x=2.0, n=-2</p>");
	writeOutput("<p>Expected: 0.25, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 0.25 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = myPow(1.0, 2147483647);
	writeOutput("<p><strong>Test 4:</strong> x=1.0, n=2147483647</p>");
	writeOutput("<p>Expected: 1.0, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 1.0 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
