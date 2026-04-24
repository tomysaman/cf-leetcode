# Combination Sum II 组合总和 II

**Problem:** Given a collection of candidate numbers and a target number, find all unique combinations where the candidate numbers sum to target. Each number may only be used once per combination.

**Constraints:**
- All numbers (including target) are positive integers
- Solution set must not contain duplicate combinations

**Examples:**

Example 1:
```
Input: candidates = [10,1,2,7,6,1,5], target = 8
Output: [[1,7], [1,2,5], [2,6], [1,1,6]]
```

Example 2:
```
Input: candidates = [2,5,2,1,2], target = 5
Output: [[1,2,2], [5]]
```

**Approach:** This is a backtracking problem that requires:
1. Sorting the array to handle duplicates
2. Using recursion to explore all possible combinations
3. Skipping duplicate elements at the same recursion level
4. Each element can only be used once per combination

**Key Differences from Combination Sum I:**
- Elements cannot be reused within a combination
- Need to handle duplicate elements in the input array
- Must avoid duplicate combinations in the result

The solution involves iterating through candidates, making recursive calls with remaining target, and backtracking when necessary while ensuring no duplicate combinations are generated.