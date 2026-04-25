<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>2. Add Two Numbers — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Add Two Numbers - LeetCode Problem #2
 *
 * You are given two non-empty linked lists representing two non-negative integers.
 * The digits are stored in reverse order, and each node contains a single digit.
 * Add the two numbers and return the sum as a linked list.
 *
 * Since CFML has no built-in linked list, we simulate with arrays (each array
 * represents digits in reverse order, matching the problem definition).
 *
 * @param l1 Array of digits in reverse order
 * @param l2 Array of digits in reverse order
 * @return Array of digits (result) in reverse order
 */
function addTwoNumbers(required array l1, required array l2) {
	var result = [];
	var carry = 0;
	var i = 1;
	var n1 = arrayLen(l1);
	var n2 = arrayLen(l2);

	while (i <= n1 || i <= n2 || carry > 0) {
		var d1 = (i <= n1) ? l1[i] : 0;
		var d2 = (i <= n2) ? l2[i] : 0;
		var sum = d1 + d2 + carry;
		carry = int(sum / 10);
		arrayAppend(result, sum mod 10);
		i++;
	}

	return result;
}

function runTests() {
	writeOutput("<h2>Add Two Numbers - Test Results</h2>");

	// Test 1: [2,4,3] + [5,6,4] = [7,0,8]  (342 + 465 = 807)
	var r1 = addTwoNumbers([2,4,3], [5,6,4]);
	writeOutput("<p><strong>Test 1:</strong> l1=[2,4,3], l2=[5,6,4]</p>");
	writeOutput("<p>Expected: [7,0,8], Got: [" & arrayToList(r1) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r1) == "7,0,8" ? "PASS" : "FAIL") & "</p><br>");

	// Test 2: [0] + [0] = [0]
	var r2 = addTwoNumbers([0], [0]);
	writeOutput("<p><strong>Test 2:</strong> l1=[0], l2=[0]</p>");
	writeOutput("<p>Expected: [0], Got: [" & arrayToList(r2) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r2) == "0" ? "PASS" : "FAIL") & "</p><br>");

	// Test 3: [9,9,9,9,9,9,9] + [9,9,9,9] = [8,9,9,9,0,0,0,1]
	var r3 = addTwoNumbers([9,9,9,9,9,9,9], [9,9,9,9]);
	writeOutput("<p><strong>Test 3:</strong> l1=[9,9,9,9,9,9,9], l2=[9,9,9,9]</p>");
	writeOutput("<p>Expected: [8,9,9,9,0,0,0,1], Got: [" & arrayToList(r3) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r3) == "8,9,9,9,0,0,0,1" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
