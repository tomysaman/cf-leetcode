# Remove Element

**Problem:** Given an array and a value, remove all instances of that value in-place and return the new length.

**Constraints:**
- Must modify input array in-place with O(1) extra memory
- Cannot allocate extra space for another array
- Element order can be changed
- Don't need to consider elements beyond the new length

**Examples:**

Example 1: `nums = [3,2,2,3], val = 3` → return length `2`, first two elements are `2`

Example 2: `nums = [0,1,2,2,3,0,4,2], val = 2` → return length `5`, first five elements contain `0,1,3,0,4`

**Key Points:**
- Input array is passed by reference
- Function returns integer length, but modifications to input array are visible to caller
- This is a classic two-pointer problem that can be solved by maintaining a write pointer for valid elements

**Topic Tags:** Array, Two Pointers

**Similar Problems:**
- Remove Duplicates from Sorted Array
- Remove Linked List Elements  
- Move Zeroes

The problem provides template solutions in C, Go, Python3, JavaScript, and Java with empty function bodies to implement.