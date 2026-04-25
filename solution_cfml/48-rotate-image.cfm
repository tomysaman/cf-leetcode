<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>48. Rotate Image — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Rotate Image - LeetCode Problem #48
 *
 * You are given an n x n 2D matrix. Rotate the image by 90 degrees clockwise, in-place.
 * Algorithm: transpose the matrix, then reverse each row.
 *
 * @param matrix n x n array of arrays (modified in-place)
 * @return The rotated matrix
 */
function rotate(required array matrix) {
	var n = arrayLen(matrix);

	// Step 1: Transpose
	for (var i = 1; i <= n; i++) {
		for (var j = i + 1; j <= n; j++) {
			var tmp = matrix[i][j];
			matrix[i][j] = matrix[j][i];
			matrix[j][i] = tmp;
		}
	}

	// Step 2: Reverse each row
	for (var i = 1; i <= n; i++) {
		var left = 1;
		var right = n;

		while (left < right) {
			var tmp = matrix[i][left];
			matrix[i][left] = matrix[i][right];
			matrix[i][right] = tmp;
			left++;
			right--;
		}
	}

	return matrix;
}

function matrixToString(required array m) {
	var rows = [];

	for (var row in m) {
		arrayAppend(rows, "[" & arrayToList(row) & "]");
	}

	return "[" & arrayToList(rows, ",") & "]";
}

function runTests() {
	writeOutput("<h2>Rotate Image - Test Results</h2>");

	var m1 = [[1,2,3],[4,5,6],[7,8,9]];
	rotate(m1);
	writeOutput("<p><strong>Test 1:</strong> matrix=[[1,2,3],[4,5,6],[7,8,9]]</p>");
	writeOutput("<p>Expected: [[7,4,1],[8,5,2],[9,6,3]], Got: " & matrixToString(m1) & "</p>");
	var pass1 = m1[1][1] == 7 && m1[1][2] == 4 && m1[1][3] == 1 && m1[3][3] == 3;
	writeOutput("<p>Status: " & (pass1 ? "PASS" : "FAIL") & "</p><br>");

	var m2 = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]];
	rotate(m2);
	writeOutput("<p><strong>Test 2:</strong> matrix=[[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]</p>");
	writeOutput("<p>Expected: [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]</p>");
	writeOutput("<p>Got: " & matrixToString(m2) & "</p>");
	var pass2 = m2[1][1] == 15 && m2[1][4] == 5 && m2[4][4] == 11;
	writeOutput("<p>Status: " & (pass2 ? "PASS" : "FAIL") & "</p><br>");

	var m3 = [[1]];
	rotate(m3);
	writeOutput("<p><strong>Test 3:</strong> matrix=[[1]]</p>");
	writeOutput("<p>Expected: [[1]], Got: " & matrixToString(m3) & "</p>");
	writeOutput("<p>Status: " & (m3[1][1] == 1 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
