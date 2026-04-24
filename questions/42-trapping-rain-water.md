# Trapping Rain Water

[0000042] (Hard)

- https://leetcode.com/problems/trapping-rain-water/

Topic Tags:
- [Stack](https://leetcode.com/tag/stack/)
- [Array](https://leetcode.com/tag/array/)
- [Two Pointers](https://leetcode.com/tag/two-pointers/)

Similar Questions:
- [[0000011]] - Container With Most Water (Medium)
- [[0000238]] - Product of Array Except Self (Medium)
- [[0000407]] - Trapping Rain Water II II (Hard)
- [[0000756]] - Pour Water (Medium) (Plus)

## Problem Description

"Given _n_ non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it is able to trap after raining."

The problem includes a visual representation showing an elevation map with trapped rainwater.

**Example:**
```
Input: [0,1,0,2,1,0,1,3,2,1,2,1]
Output: 6
```

## Solution Templates

The problem provides empty function templates in multiple programming languages:
- C: `int trap(int* height, int heightSize)`
- Go: `func trap(height []int) int`
- Python3: `def trap(self, height: List[int]) -> int`
- JavaScript: `var trap = function (height) {}`
- Java: `public int