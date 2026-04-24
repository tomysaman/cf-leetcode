<cfscript>
/**
 * Longest Valid Parentheses - LeetCode Problem #32
 *
 * Given a string containing just '(' and ')', find the length of the
 * longest valid (well-formed) parentheses substring.
 *
 * @param s Input string of '(' and ')'
 * @return Length of longest valid parentheses substring
 */
function longestValidParentheses(required string s) {
	// Stack-based approach - O(n)
	var stack = [-1];
	var maxLen = 0;
	var n = len(s);

	for (var i = 1; i <= n; i++) {
		var ch = mid(s, i, 1);

		if (ch == "(") {
			// Push 1-based index
			arrayAppend(stack, i);
		} else {
			// Pop
			arrayDeleteAt(stack, arrayLen(stack));

			if (arrayIsEmpty(stack)) {
				arrayAppend(stack, i);
			} else {
				var length = i - stack[arrayLen(stack)];

				if (length > maxLen) {
					maxLen = length;
				}
			}
		}
	}

	return maxLen;
}

function runTests() {
	writeOutput("<h2>Longest Valid Parentheses - Test Results</h2>");

	var r1 = longestValidParentheses("(()");
	writeOutput("<p><strong>Test 1:</strong> s=""(()""</p>");
	writeOutput("<p>Expected: 2, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == 2 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = longestValidParentheses(")()())");
	writeOutput("<p><strong>Test 2:</strong> s="")()())""</p>");
	writeOutput("<p>Expected: 4, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == 4 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = longestValidParentheses("");
	writeOutput("<p><strong>Test 3:</strong> s=""""</p>");
	writeOutput("<p>Expected: 0, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r4 = longestValidParentheses("()(()");
	writeOutput("<p><strong>Test 4:</strong> s=""()(()""</p>");
	writeOutput("<p>Expected: 2, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == 2 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
