<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>37. Sudoku Solver — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Sudoku Solver - LeetCode Problem #37
 *
 * Write a program to solve a Sudoku puzzle by filling the empty cells.
 * Board is a 9x9 array of strings ("1"-"9" or ".").
 * The board is modified in-place.
 *
 * @param board 9x9 array of strings (modified in-place)
 * @return The solved board
 */
function solveSudoku(required array board) {
	function isCellValid(required array b, required numeric row, required numeric col, required string num) {
		// Check row
		for (var c = 1; c <= 9; c++) {
			if (b[row][c] == num) {
				return false;
			}
		}

		// Check column
		for (var r = 1; r <= 9; r++) {
			if (b[r][col] == num) {
				return false;
			}
		}

		// Check 3x3 box
		var boxRow = int((row - 1) / 3) * 3 + 1;
		var boxCol = int((col - 1) / 3) * 3 + 1;

		for (var r = boxRow; r <= boxRow + 2; r++) {
			for (var c = boxCol; c <= boxCol + 2; c++) {
				if (b[r][c] == num) {
					return false;
				}
			}
		}

		return true;
	}

	function solveBoard(required array b) {
		for (var r = 1; r <= 9; r++) {
			for (var c = 1; c <= 9; c++) {
				if (b[r][c] == ".") {
					for (var n = 1; n <= 9; n++) {
						var num = "#n#";

						if (isCellValid(b, r, c, num)) {
							b[r][c] = num;

							if (solveBoard(b)) {
								return true;
							}

							b[r][c] = ".";
						}
					}

					return false;
				}
			}
		}

		return true;
	}

	solveBoard(board);

	return board;
}

function runTests() {
	writeOutput("<h2>Sudoku Solver - Test Results</h2>");

	var board = [
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

	solveSudoku(board);

	var solved = true;

	for (var r = 1; r <= 9; r++) {
		for (var c = 1; c <= 9; c++) {
			if (board[r][c] == ".") {
				solved = false;
			}
		}
	}

	writeOutput("<p><strong>Test 1:</strong> Solve the standard Sudoku puzzle</p>");
	writeOutput("<p>Row 1 solved: [" & arrayToList(board[1]) & "]</p>");
	writeOutput("<p>Row 5 solved: [" & arrayToList(board[5]) & "]</p>");
	writeOutput("<p>Status: " & (solved && board[1][1] == "5" && board[1][3] == "4" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
