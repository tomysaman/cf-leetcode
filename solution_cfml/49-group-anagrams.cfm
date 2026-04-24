<cfscript>
/**
 * Group Anagrams - LeetCode Problem #49
 *
 * Given an array of strings strs, group the anagrams together.
 * An anagram uses all the original letters exactly once.
 *
 * @param strs Array of strings
 * @return Array of groups, each group containing anagrams
 */
function groupAnagrams(required array strs) {
	var map = {};

	for (var s in strs) {
		// Sort the characters to form a canonical key
		var chars = [];

		for (var i = 1; i <= len(s); i++) {
			arrayAppend(chars, mid(s, i, 1));
		}

		arraySort(chars, "textnocase");
		var key = arrayToList(chars, "");

		if (!structKeyExists(map, key)) {
			map[key] = [];
		}

		arrayAppend(map[key], s);
	}

	var result = [];

	for (var key in map) {
		arrayAppend(result, map[key]);
	}

	return result;
}

function runTests() {
	writeOutput("<h2>Group Anagrams - Test Results</h2>");

	var r1 = groupAnagrams(["eat","tea","tan","ate","nat","bat"]);
	writeOutput("<p><strong>Test 1:</strong> strs=[""eat"",""tea"",""tan"",""ate"",""nat"",""bat""]</p>");
	writeOutput("<p>Expected: 3 groups, Got: " & arrayLen(r1) & " group(s)</p>");

	for (var group in r1) {
		writeOutput("<p>  [" & arrayToList(group) & "]</p>");
	}

	writeOutput("<p>Status: " & (arrayLen(r1) == 3 ? "PASS" : "FAIL") & "</p><br>");

	var r2 = groupAnagrams([""]);
	writeOutput("<p><strong>Test 2:</strong> strs=[""]</p>");
	writeOutput("<p>Expected: 1 group [[""""]], Got: " & arrayLen(r2) & " group(s)</p>");
	writeOutput("<p>Status: " & (arrayLen(r2) == 1 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = groupAnagrams(["a"]);
	writeOutput("<p><strong>Test 3:</strong> strs=[""a""]</p>");
	writeOutput("<p>Expected: 1 group [[""a""]], Got: " & arrayLen(r3) & " group(s)</p>");
	writeOutput("<p>Status: " & (arrayLen(r3) == 1 ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
