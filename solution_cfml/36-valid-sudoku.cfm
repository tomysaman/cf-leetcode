<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>36. Valid Sudoku — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Valid Sudoku - LeetCode Problem #36
 *
 * Determine if a 9x9 Sudoku board is valid.
 * Only filled cells need to be validated.
 * Board is represented as an array of 9 arrays, each with 9 strings ("1"-"9" or ".").
 *
 * @param board 9x9 array of strings
 * @return Boolean true if valid, false otherwise
 */
function isValidSudoku(required array board) {
	// Check rows
	for (var r = 1; r <= 9; r++) {
		var seen = {};

		for (var c = 1; c <= 9; c++) {
			var cell = board[r][c];

			if (cell != ".") {
				if (structKeyExists(seen, cell)) {
					return false;
				}

				seen[cell] = true;
			}
		}
	}

	// Check columns
	for (var c = 1; c <= 9; c++) {
		var seen = {};

		for (var r = 1; r <= 9; r++) {
			var cell = board[r][c];

			if (cell != ".") {
				if (structKeyExists(seen, cell)) {
					return false;
				}

				seen[cell] = true;
			}
		}
	}

	// Check 3x3 boxes
	for (var boxRow = 0; boxRow <= 2; boxRow++) {
		for (var boxCol = 0; boxCol <= 2; boxCol++) {
			var seen = {};

			for (var r = 1; r <= 3; r++) {
				for (var c = 1; c <= 3; c++) {
					var cell = board[boxRow * 3 + r][boxCol * 3 + c];

					if (cell != ".") {
						if (structKeyExists(seen, cell)) {
							return false;
						}

						seen[cell] = true;
					}
				}
			}
		}
	}

	return true;
}

function runTests() {
	writeOutput("<h2>Valid Sudoku - Test Results</h2>");

	// Valid board
	var board1 = [
		["5","3",".",".","7",".",".",".","."],
		["6",".",".","1","9","5",".",".","."],
		[".","9","8",".",".",".",".","6","."],
		["8",".",".",".","6",".",".",".","3"],
		["4",".",".","8",".","3",".",".","1"],
		["7",".",".",".","2",".",".",".","6"],
		[".","6",".",".",".",".","2","8","."],
		[".",".",".","4","1","9",".",".","5"],
		[".",".",".",".","8",".",".","7","9"]
	];
	var r1 = isValidSudoku(board1);
	writeOutput("<p><strong>Test 1:</strong> Valid board</p>");
	writeOutput("<p>Expected: true, Got: " & r1 & "</p>");
	writeOutput("<p>Status: " & (r1 == true ? "PASS" : "FAIL") & "</p><br>");

	// Invalid board (duplicate 8 in first row)
	var board2 = [
		["8","3",".",".","7",".",".",".","."],
		["6",".",".","1","9","5",".",".","."],
		[".","9","8",".",".",".",".","6","."],
		["8",".",".",".","6",".",".",".","3"],
		["4",".",".","8",".","3",".",".","1"],
		["7",".",".",".","2",".",".",".","6"],
		[".","6",".",".",".",".","2","8","."],
		[".",".",".","4","1","9",".",".","5"],
		[".",".",".",".","8",".",".","7","9"]
	];
	var r2 = isValidSudoku(board2);
	writeOutput("<p><strong>Test 2:</strong> Invalid board (duplicate 8 in column 1)</p>");
	writeOutput("<p>Expected: false, Got: " & r2 & "</p>");
	writeOutput("<p>Status: " & (r2 == false ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
