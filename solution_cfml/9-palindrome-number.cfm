<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>9. Palindrome Number — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Palindrome Number - LeetCode Problem #9
 *
 * Determine whether an integer is a palindrome.
 * An integer is a palindrome when it reads the same backward as forward.
 *
 * @param x Input integer
 * @return Boolean true if palindrome, false otherwise
 */
function isPalindrome(required numeric x) {
	// Approach 1: String conversion
	function isPalindromeString(required numeric n) {
		if (n < 0) {
			return false;
		}

		var s = string(n);
		var reversed = "";

		for (var i = len(s); i >= 1; i--) {
			reversed &= mid(s, i, 1);
		}

		return s == reversed;
	}

	// Approach 2: Reverse half the number (no string conversion)
	function isPalindromeHalf(required numeric n) {
		if (n < 0 || (n != 0 && n mod 10 == 0)) {
			return false;
		}

		var reversed = 0;
		var num = n;

		while (num > reversed) {
			reversed = reversed * 10 + (num mod 10);
			num = int(num / 10);
		}

		return num == reversed || num == int(reversed / 10);
	}

	return isPalindromeHalf(x);
}

function runTests() {
	writeOutput("<h2>Palindrome Number - Test Results</h2>");

	var r1 = isPalindrome(121);
	writeOutput("<p><strong>Test 1:</strong> x = 121</p>");
	writeOutput("<p>Expected: true, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == true ? "PASS" : "FAIL") & "</p><br>");

	var r2 = isPalindrome(-121);
	writeOutput("<p><strong>Test 2:</strong> x = -121</p>");
	writeOutput("<p>Expected: false, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == false ? "PASS" : "FAIL") & "</p><br>");

	var r3 = isPalindrome(10);
	writeOutput("<p><strong>Test 3:</strong> x = 10</p>");
	writeOutput("<p>Expected: false, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == false ? "PASS" : "FAIL") & "</p><br>");

	var r4 = isPalindrome(0);
	writeOutput("<p><strong>Test 4:</strong> x = 0</p>");
	writeOutput("<p>Expected: true, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == true ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
