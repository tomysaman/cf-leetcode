<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1. Two Sum — CFML Solution</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
<cfinclude template="/includes/header.cfm">
<main>
<cfscript>
/**
 * Two Sum - LeetCode Problem #1
 *
 * Given an array of integers nums and an integer target, return indices of the
 * two numbers such that they add up to target.
 *
 * You may assume that each input would have exactly one solution, and you may
 * not use the same element twice.
 *
 * @param nums Array of integers
 * @param target Integer target sum
 * @return Array containing indices of the two numbers that add up to target
 */
function twoSum(required array nums, required numeric target) {
	// Approach 1: Brute Force - O(n^2) time complexity
	function twoSumBruteForce(required array nums, required numeric target) {
		var n = arrayLen(nums);

		for (var i = 1; i <= n; i++) {
			for (var j = i + 1; j <= n; j++) {
				if (nums[i] + nums[j] == target) {
					// Return 0-based indices (subtract 1 from CFML 1-based indices)
					return [i - 1, j - 1];
				}
			}
		}

		// Should never reach here according to problem constraints
		return [];
	}

	// Approach 2: Hash Map - O(n) time complexity
	function twoSumHashMap(required array nums, required numeric target) {
		var hashMap = {}; // Store value -> index mapping
		var n = arrayLen(nums);

		for (var i = 1; i <= n; i++) {
			var complement = target - nums[i];

			// Check if complement exists in hash map
			if (structKeyExists(hashMap, complement)) {
				// Return 0-based indices
				return [hashMap[complement], i - 1];
			}

			// Store current number and its index (0-based)
			hashMap[nums[i]] = i - 1;
		}

		// Should never reach here according to problem constraints
		return [];
	}

	// Use the optimized hash map approach
	return twoSumHashMap(nums, target);
}

// Test cases
function runTests() {
	writeOutput("<h2>Two Sum - Test Results</h2>");

	// Test Case 1: nums = [2,7,11,15], target = 9
	var result1 = twoSum([2, 7, 11, 15], 9);
	writeOutput("<p><strong>Test 1:</strong> nums = [2,7,11,15], target = 9</p>");
	writeOutput("<p>Expected: [0,1], Got: [" & arrayToList(result1) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(result1) == "0,1" ? "PASS" : "FAIL") & "</p><br>");

	// Test Case 2: nums = [3,2,4], target = 6
	var result2 = twoSum([3, 2, 4], 6);
	writeOutput("<p><strong>Test 2:</strong> nums = [3,2,4], target = 6</p>");
	writeOutput("<p>Expected: [1,2], Got: [" & arrayToList(result2) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(result2) == "1,2" ? "PASS" : "FAIL") & "</p><br>");

	// Test Case 3: nums = [3,3], target = 6
	var result3 = twoSum([3, 3], 6);
	writeOutput("<p><strong>Test 3:</strong> nums = [3,3], target = 6</p>");
	writeOutput("<p>Expected: [0,1], Got: [" & arrayToList(result3) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(result3) == "0,1" ? "PASS" : "FAIL") & "</p><br>");

	// Additional Test Case: nums = [-1,-2,-3,-4,-5], target = -8
	var result4 = twoSum([-1, -2, -3, -4, -5], -8);
	writeOutput("<p><strong>Test 4:</strong> nums = [-1,-2,-3,-4,-5], target = -8</p>");
	writeOutput("<p>Expected: [2,4] (indices of -3 and -5), Got: [" & arrayToList(result4) & "]</p>");
	writeOutput("<p>Status: " & (arrayToList(result4) == "2,4" ? "PASS" : "FAIL") & "</p><br>");
}

// Run the tests when the page is accessed
runTests();
</cfscript>
</main>
<cfinclude template="/includes/footer.cfm">
</body>
</html>

<!---
Alternative approach using CFML tags instead of cfscript:

<cffunction name="twoSumTags" access="public" returntype="array">
	<cfargument name="nums" type="array" required="true">
	<cfargument name="target" type="numeric" required="true">

	<cfset var hashMap = {}>
	<cfset var n = arrayLen(arguments.nums)>

	<cfloop from="1" to="#n#" index="i">
		<cfset var complement = arguments.target - arguments.nums[i]>

		<cfif structKeyExists(hashMap, complement)>
			<cfreturn [hashMap[complement], i - 1]>
		</cfif>

		<cfset hashMap[arguments.nums[i]] = i - 1>
	</cfloop>

	<cfreturn []>
</cffunction>
--->