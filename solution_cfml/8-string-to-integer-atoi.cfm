<cfscript>
/**
 * String to Integer (atoi) - LeetCode Problem #8
 *
 * Implement atoi which converts a string to an integer.
 * Rules: skip leading whitespace, optional sign, read digits, clamp to 32-bit range.
 *
 * @param s Input string
 * @return Converted integer
 */
function myAtoi(required string s) {
	var INT_MAX = 2147483647;
	var INT_MIN = -2147483648;
	var i = 1;
	var n = len(s);
	var result = 0;
	var sign = 1;

	// Skip leading whitespace
	while (i <= n && mid(s, i, 1) == " ") {
		i++;
	}

	if (i > n) {
		return 0;
	}

	// Optional sign
	if (mid(s, i, 1) == "+" || mid(s, i, 1) == "-") {
		if (mid(s, i, 1) == "-") {
			sign = -1;
		}
		i++;
	}

	// Read digits
	while (i <= n) {
		var ch = mid(s, i, 1);

		if (!isNumeric(ch) || ch == "." || ch == "e") {
			break;
		}

		var digit = val(ch);
		// Check for overflow before multiplying
		if (result > int((INT_MAX - digit) / 10)) {
			return (sign == 1) ? INT_MAX : INT_MIN;
		}

		result = result * 10 + digit;
		i++;
	}

	return result * sign;
}

function runTests() {
	writeOutput("<h2>String to Integer (atoi) - Test Results</h2>");

	var r1 = myAtoi("42");
	writeOutput("<p><strong>Test 1:</strong> str = ""42""</p>");
	writeOutput("<p>Expected: 42, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 42 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = myAtoi("   -42");
	writeOutput("<p><strong>Test 2:</strong> str = ""   -42""</p>");
	writeOutput("<p>Expected: -42, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == -42 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = myAtoi("4193 with words");
	writeOutput("<p><strong>Test 3:</strong> str = ""4193 with words""</p>");
	writeOutput("<p>Expected: 4193, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 4193 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = myAtoi("words and 987");
	writeOutput("<p><strong>Test 4:</strong> str = ""words and 987""</p>");
	writeOutput("<p>Expected: 0, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r5 = myAtoi("-91283472332");
	writeOutput("<p><strong>Test 5:</strong> str = ""-91283472332"" (underflow)</p>");
	writeOutput("<p>Expected: -2147483648, Got: " & r5 & "</p>");
	writeOutput("<p>Status: " & (r5 == -2147483648 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
