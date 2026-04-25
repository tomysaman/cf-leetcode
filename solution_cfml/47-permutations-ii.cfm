<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>47. Permutations Ii — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Permutations II - LeetCode Problem #47
 *
 * Given a collection of numbers that might contain duplicates,
 * return all possible unique permutations.
 *
 * @param nums Array of integers (may contain duplicates)
 * @return Array of unique permutations
 */
function permuteUnique(required array nums) {
	var result = [];
	arraySort(nums, "numeric");
	var used = arrayNew(1);

	for (var i = 1; i <= arrayLen(nums); i++) {
		used[i] = false;
	}

	// Pass nums, used, and result explicitly — Lucee nested functions cannot close over outer vars
	function btPermuteUnique(
		required array current,
		required array numArr,
		required array usedArr,
		required array output
	) {
		if (arrayLen(current) == arrayLen(numArr)) {
			arrayAppend(output, duplicate(current));
			return;
		}

		for (var i = 1; i <= arrayLen(numArr); i++) {
			if (usedArr[i]) {
				continue;
			}

			// Skip duplicates at the same level
			if (i > 1 && numArr[i] == numArr[i - 1] && !usedArr[i - 1]) {
				continue;
			}

			usedArr[i] = true;
			arrayAppend(current, numArr[i]);
			btPermuteUnique(current, numArr, usedArr, output);
			arrayDeleteAt(current, arrayLen(current));
			usedArr[i] = false;
		}
	}

	btPermuteUnique([], nums, used, result);

	return result;
}

function runTests() {
	writeOutput("<h2>Permutations II - Test Results</h2>");

	var r1 = permuteUnique([1,1,2]);
	writeOutput("<p><strong>Test 1:</strong> nums=[1,1,2]</p>");
	writeOutput("<p>Expected: 3 unique permutations, Got: " & arrayLen(r1) & " permutation(s)</p>");

	for (var perm in r1) {
		writeOutput("<p>  [" & arrayToList(perm) & "]</p>");
	}

	writeOutput("<p>Status: " & (arrayLen(r1) == 3 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = permuteUnique([1,2,3]);
	writeOutput("<p><strong>Test 2:</strong> nums=[1,2,3] (no duplicates)</p>");
	writeOutput("<p>Expected: 6 permutations, Got: " & arrayLen(r2) & " permutation(s)</p>");
	writeOutput("<p>Status: " & (arrayLen(r2) == 6 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = permuteUnique([1,1,1]);
	writeOutput("<p><strong>Test 3:</strong> nums=[1,1,1]</p>");
	writeOutput("<p>Expected: 1 unique permutation [[1,1,1]], Got: " & arrayLen(r3) & " permutation(s)</p>");
	writeOutput("<p>Status: " & (arrayLen(r3) == 1 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>
