# Permutations II II

**Problem ID:** [0000047] (Medium)

**Link:** https://leetcode.com/problems/permutations-ii/

**Topic Tags:** Backtracking

## Problem Description

"Given a collection of numbers that might contain duplicates, return all possible unique permutations."

**Example:**
```
Input: [1,1,2]
Output:
[
  [1,1,2],
  [1,2,1],
  [2,1,1]
]
```

## Similar Problems

- Next Permutation (Medium)
- Permutations (Medium) 
- Palindrome Permutation II II (Medium)
- Number of Squareful Arrays (Hard)

## Solution Templates

The problem provides empty function templates in multiple programming languages:

- **C:** `int** permuteUnique(int* nums, int numsSize, int* returnSize, int** returnColumnSizes)`
- **Go:** `func permuteUnique(nums []int) [][]int`
- **Python3:** `def permuteUnique(self, nums: List[int]) -> List[List[int]]`
- **JavaScript:** `var permuteUnique = function (nums) {}`
- **Java:** `public List<List<Integer>> permuteUnique(int[] nums)`

This is a classic backtracking problem that requires handling duplicate elements to generate unique permutations only.