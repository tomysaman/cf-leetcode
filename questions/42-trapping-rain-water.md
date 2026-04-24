# Trapping Rain Water 接雨水

[0000042] (Hard)

- https://leetcode.com/problems/trapping-rain-water/

Topic Tags:
- [Stack 栈](https://leetcode.com/tag/stack/)
- [Array 数组](https://leetcode.com/tag/array/)
- [Two Pointers 双指针](https://leetcode.com/tag/two-pointers/)

Similar Questions:
- [[0000011]] - Container With Most Water 盛最多水的容器 (Medium)
- [[0000238]] - Product of Array Except Self 除自身以外数组的乘积 (Medium)
- [[0000407]] - Trapping Rain Water II 接雨水 II (Hard)
- [[0000756]] - Pour Water 倒水 (Medium) (Plus)

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