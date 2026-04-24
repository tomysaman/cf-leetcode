# Next Permutation 下一个排列

**Problem ID:** 0000031 (Medium)

**Topic Tags:** Array 数组

## Problem Description

"Implement **next permutation**, which rearranges numbers into the lexicographically next greater permutation of numbers."

Key requirements:
- "If such an arrangement is not possible, it must rearrange it as the lowest possible order (i.e., sorted in ascending order)"
- "The replacement must be **in place** and use only constant extra memory"

## Examples

- Input: `[1,2,3]` → Output: `[1,3,2]`
- Input: `[3,2,1]` → Output: `[1,2,3]` 
- Input: `[1,1,5]` → Output: `[1,5,1]`
- Input: `[1]` → Output: `[1]`

## Constraints

- `1 <= nums.length <= 100`
- `0 <= nums[i] <= 100`

## Algorithm Approach

The next permutation algorithm follows these steps:

1. **Find the pivot**: Scan from right to left to find the first element that is smaller than its next element
2. **Find the successor**: If a pivot exists, find the smallest element to its right that is larger than the pivot
3. **Swap**: Exchange the pivot with its successor
4. **Reverse**: Reverse the suffix after the original pivot position to get the lexicographically smallest arrangement

If no pivot is found, the array is in descending order, so reverse the entire array to get the smallest permutation.

## Solution Templates

The problem provides empty function templates in C, Go, Python3, JavaScript, and Java for implementation.