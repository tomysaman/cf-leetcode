<cfscript>
/**
 * ZigZag Conversion - LeetCode Problem #6
 *
 * The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows.
 * Return the string read line by line.
 *
 * @param s Input string
 * @param numRows Number of rows
 * @return Converted string
 */
function convert(required string s, required numeric numRows) {
	if (numRows == 1 || numRows >= len(s)) {
		return s;
	}

	var rows = [];

	for (var i = 1; i <= numRows; i++) {
		arrayAppend(rows, "");
	}

	var currentRow = 1;
	var goingDown = false;

	for (var i = 1; i <= len(s); i++) {
		rows[currentRow] &= mid(s, i, 1);

		if (currentRow == 1 || currentRow == numRows) {
			goingDown = !goingDown;
		}

		currentRow += (goingDown ? 1 : -1);
	}

	var result = "";

	for (var row in rows) {
		result &= row;
	}

	return result;
}

function runTests() {
	writeOutput("<h2>ZigZag Conversion - Test Results</h2>");

	var r1 = convert("PAYPALISHIRING", 3);
	writeOutput("<p><strong>Test 1:</strong> s=""PAYPALISHIRING"", numRows=3</p>");
	writeOutput("<p>Expected: ""PAHNAPLSIIGYIR"", Got: """ & r1 & """</p>");
	writeOutput("<p>Status: " & (r1 == "PAHNAPLSIIGYIR" ? "PASS" : "FAIL") & "</p><br>");

	var r2 = convert("PAYPALISHIRING", 4);
	writeOutput("<p><strong>Test 2:</strong> s=""PAYPALISHIRING"", numRows=4</p>");
	writeOutput("<p>Expected: ""PINALSIGYAHRPI"", Got: """ & r2 & """</p>");
	writeOutput("<p>Status: " & (r2 == "PINALSIGYAHRPI" ? "PASS" : "FAIL") & "</p><br>");

	var r3 = convert("A", 1);
	writeOutput("<p><strong>Test 3:</strong> s=""A"", numRows=1</p>");
	writeOutput("<p>Expected: ""A"", Got: """ & r3 & """</p>");
	writeOutput("<p>Status: " & (r3 == "A" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
