<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>17. Letter Combinations Of A Phone Number — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/template/header.cfm">
<main>
<cfscript>
/**
 * Letter Combinations of a Phone Number - LeetCode Problem #17
 *
 * Given a string containing digits from 2-9 inclusive, return all possible
 * letter combinations that the number could represent.
 *
 * @param digits String of digits 2-9
 * @return Array of all possible letter combinations
 */
function letterCombinations(required string digits) {
	if (len(digits) == 0) {
		return [];
	}

	var phoneMap = {
		"2": ["a","b","c"],
		"3": ["d","e","f"],
		"4": ["g","h","i"],
		"5": ["j","k","l"],
		"6": ["m","n","o"],
		"7": ["p","q","r","s"],
		"8": ["t","u","v"],
		"9": ["w","x","y","z"]
	};

	var result = [];

	// Pass digits, phoneMap, and result as parameters so nested function can access them
	function btCombine(
		required string current,
		required numeric index,
		required string digitStr,
		required struct pMap,
		required array output
	) {
		if (index > len(digitStr)) {
			arrayAppend(output, current);
			return;
		}

		var d = mid(digitStr, index, 1);
		var letters = pMap[d];

		for (var letter in letters) {
			btCombine(current & letter, index + 1, digitStr, pMap, output);
		}
	}

	btCombine("", 1, digits, phoneMap, result);

	return result;
}

function runTests() {
	writeOutput("<h2>Letter Combinations of a Phone Number - Test Results</h2>");

	var r1 = letterCombinations("23");
	writeOutput("<p><strong>Test 1:</strong> digits=""23""</p>");
	writeOutput("<p>Expected: [""ad"",""ae"",""af"",""bd"",""be"",""bf"",""cd"",""ce"",""cf""] (9 combinations)</p>");
	writeOutput("<p>Got: [" & arrayToList(r1) & "] (" & arrayLen(r1) & " combinations)</p>");
	writeOutput("<p>Status: " & (arrayLen(r1) == 9 && r1[1] == "ad" ? "PASS" : "FAIL") & "</p><br>");

	var r2 = letterCombinations("");
	writeOutput("<p><strong>Test 2:</strong> digits=""""</p>");
	writeOutput("<p>Expected: [] (0 combinations), Got: " & arrayLen(r2) & " combinations</p>");
	writeOutput("<p>Status: " & (arrayLen(r2) == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = letterCombinations("2");
	writeOutput("<p><strong>Test 3:</strong> digits=""2""</p>");
	writeOutput("<p>Expected: [""a"",""b"",""c""], Got: [" & arrayToList(r3) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r3) == "a,b,c" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/template/footer.cfm">
</body>
</html>
