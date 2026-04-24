# Remove Duplicates from Sorted Array 删除排序数组中的重复项

**Problem ID:** 0000026 (Easy)

**Topic Tags:** Array 数组, Two Pointers 双指针

## Problem Description

"Given a sorted array _nums_, remove the duplicates **in-place** such that each element appears only _once_ and returns the new length."

The constraint is that you "must do this by **modifying the input array in-place** with O(1) extra memory."

## Examples

**Example 1:**
- Input: `[1,1,2]`
- Output: Length `2`, with first two elements being `1` and `2`

**Example 2:**
- Input: `[0,0,1,1,1,2,2,3,3,4]`
- Output: Length `5`, with first five elements being `0,1,2,3,4`

## Key Points

- The array is already sorted
- Modification must be done in-place with O(1) extra space
- Return the new length after removing duplicates
- The input array is passed by reference, so modifications are visible to the caller

## Solution Templates

The problem provides starter code in multiple languages including C, Go, Python3, JavaScript, and Java, each with the appropriate function signature for implementing the duplicate removal algorithm.

This is a classic two-pointer problem where you can use one pointer to track unique elements and another to scan through the array.