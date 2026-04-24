<cfscript>
/**
 * Valid Parentheses - LeetCode Problem #20
 *
 * Given a string s containing just '(', ')', '{', '}', '[' and ']',
 * determine if the input string is valid.
 *
 * @param s Input string
 * @return Boolean true if valid, false otherwise
 */
function isValidParentheses(required string s) {
	var stack = [];
	var n = len(s);
	var matching = {")": "(", "}": "{", "]": "["};

	for (var i = 1; i <= n; i++) {
		var ch = mid(s, i, 1);

		if (ch == "(" || ch == "{" || ch == "[") {
			arrayAppend(stack, ch);
		} else if (structKeyExists(matching, ch)) {
			if (arrayIsEmpty(stack) || stack[arrayLen(stack)] != matching[ch]) {
				return false;
			}

			arrayDeleteAt(stack, arrayLen(stack));
		}
	}

	return arrayIsEmpty(stack);
}

function runTests() {
	writeOutput("<h2>Valid Parentheses - Test Results</h2>");

	var r1 = isValidParentheses("()");
	writeOutput("<p><strong>Test 1:</strong> s=""()""</p>");
	writeOutput("<p>Expected: true, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == true ? "PASS" : "FAIL") & "</p><br>");

	var r2 = isValidParentheses("()[]{}");
	writeOutput("<p><strong>Test 2:</strong> s=""()[]{}""</p>");
	writeOutput("<p>Expected: true, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == true ? "PASS" : "FAIL") & "</p><br>");

	var r3 = isValidParentheses("(]");
	writeOutput("<p><strong>Test 3:</strong> s=""(]""</p>");
	writeOutput("<p>Expected: false, Got: " & r3 & "</p>");
	writeOutput("<p>Status: " & (r3 == false ? "PASS" : "FAIL") & "</p><br>");

	var r4 = isValidParentheses("([)]");
	writeOutput("<p><strong>Test 4:</strong> s=""([)]""</p>");
	writeOutput("<p>Expected: false, Got: " & r4 & "</p>");
	writeOutput("<p>Status: " & (r4 == false ? "PASS" : "FAIL") & "</p><br>");

	var r5 = isValidParentheses("{[]}");
	writeOutput("<p><strong>Test 5:</strong> s=""{[]}""</p>");
	writeOutput("<p>Expected: true, Got: " & r5 & "</p>");
	writeOutput("<p>Status: " & (r5 == true ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
