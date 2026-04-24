<cfscript>
/**
 * Substring with Concatenation of All Words - LeetCode Problem #30
 *
 * Given a string s and an array of words (all same length), return all starting
 * indices of substrings that are a concatenation of all words in any order.
 *
 * @param s Input string
 * @param words Array of words (all equal length)
 * @return Array of starting indices (0-based)
 */
function findSubstring(required string s, required array words) {
	var result = [];

	if (len(s) == 0 || arrayIsEmpty(words)) {
		return result;
	}

	var wordLen = len(words[1]);
	var wordCount = arrayLen(words);
	var totalLen = wordLen * wordCount;
	var sLen = len(s);

	// Build frequency map of words
	var wordMap = {};

	for (var w in words) {
		wordMap[w] = (structKeyExists(wordMap, w) ? wordMap[w] : 0) + 1;
	}

	for (var i = 1; i <= sLen - totalLen + 1; i++) {
		var seen = {};
		var j = 0;

		while (j < wordCount) {
			var word = mid(s, i + j * wordLen, wordLen);

			if (!structKeyExists(wordMap, word)) {
				break;
			}

			seen[word] = (structKeyExists(seen, word) ? seen[word] : 0) + 1;

			if (seen[word] > wordMap[word]) {
				break;
			}

			j++;
		}

		if (j == wordCount) {
			// Return 0-based index
			arrayAppend(result, i - 1);
		}
	}

	return result;
}

function runTests() {
	writeOutput("<h2>Substring with Concatenation of All Words - Test Results</h2>");

	var r1 = findSubstring("barfoothefoobarman", ["foo","bar"]);
	writeOutput("<p><strong>Test 1:</strong> s=""barfoothefoobarman"", words=[""foo"",""bar""]</p>");
	writeOutput("<p>Expected: [0,9], Got: [" & arrayToList(r1) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r1) == "0,9" ? "PASS" : "FAIL") & "</p><br>");

	var r2 = findSubstring("wordgoodgoodgoodbestword", ["word","good","best","word"]);
	writeOutput("<p><strong>Test 2:</strong> s=""wordgoodgoodgoodbestword"", words=[""word"",""good"",""best"",""word""]</p>");
	writeOutput("<p>Expected: [], Got: [" & arrayToList(r2) & "]</p>");
	writeOutput("<p>Status: " & (arrayLen(r2) == 0 ? "PASS" : "FAIL") & "</p><br>");

	var r3 = findSubstring("barfoofoobarthefoobarman", ["bar","foo","the"]);
	writeOutput("<p><strong>Test 3:</strong> s=""barfoofoobarthefoobarman"", words=[""bar"",""foo"",""the""]</p>");
	writeOutput("<p>Expected: [6,9,12], Got: [" & arrayToList(r3) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(r3) == "6,9,12" ? "PASS" : "FAIL") & "</p><br>");
}

runTests();
</cfscript>
