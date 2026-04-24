# Permutations II 全排列 II

**Problem ID:** [0000047] (Medium)

**Link:** https://leetcode.com/problems/permutations-ii/

**Topic Tags:** Backtracking 回溯算法

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

## 翻译 (Chinese Translation)

给定一个可包含重复数字的序列，返回所有不重复的全排列。

## Similar Problems

- Next Permutation 下一个排列 (Medium)
- Permutations 全排列 (Medium) 
- Palindrome Permutation II 回文排列 II (Medium)
- Number of Squareful Arrays 正方形数组的数目 (Hard)

## Solution Templates

The problem provides empty function templates in multiple programming languages:

- **C:** `int** permuteUnique(int* nums, int numsSize, int* returnSize, int** returnColumnSizes)`
- **Go:** `func permuteUnique(nums []int) [][]int`
- **Python3:** `def permuteUnique(self, nums: List[int]) -> List[List[int]]`
- **JavaScript:** `var permuteUnique = function (nums) {}`
- **Java:** `public List<List<Integer>> permuteUnique(int[] nums)`

This is a classic backtracking problem that requires handling duplicate elements to generate unique permutations only.