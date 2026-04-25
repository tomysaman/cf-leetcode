<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>43. Multiply Strings — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Multiply Strings - LeetCode Problem #43
 *
 * Given two non-negative integers num1 and num2 represented as strings,
 * return the product as a string. Must not convert inputs to integer directly.
 *
 * @param num1 First number as string
 * @param num2 Second number as string
 * @return Product as string
 */
function multiply(required string num1, required string num2) {
	if (num1 == "0" || num2 == "0") {
		return "0";
	}

	var m = len(num1);
	var n = len(num2);
	var pos = arrayNew(1);

	for (var i = 1; i <= m + n; i++) {
		pos[i] = 0;
	}

	for (var i = m; i >= 1; i--) {
		for (var j = n; j >= 1; j--) {
			var mul = (asc(mid(num1, i, 1)) - 48) * (asc(mid(num2, j, 1)) - 48);
			var p1 = i + j - 1;
			var p2 = i + j;
			var total = mul + pos[p2];
			pos[p2] = total mod 10;
			pos[p1] += int(total / 10);
		}
	}

	var result = "";

	for (var digit in pos) {
		if (!(result == "" && digit == 0)) {
			result &= digit;
		}
	}

	return (result == "" ? "0" : result);
}

function runTests() {
	writeOutput("<h2>Multiply Strings - Test Results</h2>");

	var r1 = multiply("2", "3");
	writeOutput("<p><strong>Test 1:</strong> num1=""2"", num2=""3""</p>");
	writeOutput("<p>Expected: ""6"", Got: """ & r1 & """</p>");
	writeOutput("<p>Status: " & (r1 == "6" ? "PASS" : "FAIL") & "</p><br>");

	var r2 = multiply("123", "456");
	writeOutput("<p><strong>Test 2:</strong> num1=""123"", num2=""456""</p>");
	writeOutput("<p>Expected: ""56088"", Got: """ & r2 & """</p>");
	writeOutput("<p>Status: " & (r2 == "56088" ? "PASS" : "FAIL") & "</p><br>");

	var r3 = multiply("0", "12345");
	writeOutput("<p><strong>Test 3:</strong> num1=""0"", num2=""12345""</p>");
	writeOutput("<p>Expected: ""0"", Got: """ & r3 & """</p>");
	writeOutput("<p>Status: " & (r3 == "0" ? "PASS" : "FAIL") & "</p><br>");

	var r4 = multiply("99", "99");
	writeOutput("<p><strong>Test 4:</strong> num1=""99"", num2=""99""</p>");
	writeOutput("<p>Expected: ""9801"", Got: """ & r4 & """</p>");
	writeOutput("<p>Status: " & (r4 == "9801" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
