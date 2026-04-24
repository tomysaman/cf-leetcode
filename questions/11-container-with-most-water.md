# Container With Most Water 盛最多水的容器

[0000011] (Medium)

- https://leetcode.com/problems/container-with-most-water/

Topic Tags:
- [Array 数组](https://leetcode.com/tag/array/)
- [Two Pointers 双指针](https://leetcode.com/tag/two-pointers/)

Similar Questions:
- [[0000042](https://leetcode.com/problems/trapping-rain-water/)] - [Trapping Rain Water 接雨水](./0000042.trapping-rain-water.md) (Hard)

## Problem Description

"Given `n` non-negative integers a₁, a₂, ..., aₙ, where each represents a point at coordinate (i, aᵢ). n vertical lines are drawn such that the two endpoints of the line i is at (i, aᵢ) and (i, 0). Find two lines, which, together with the x-axis forms a container, such that the container contains the most water."

**Notice** that you may not slant the container.

**Example 1:**
```
Input: height = [1,8,6,2,5,4,8,3,7]
Output: 49
Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
```

**Example 2:**
```
Input: height = [1,1]
Output: 1
```

**Example 3:**
```
Input: height = [4,3,2,1,4]
Output: 16
```

**Example 4:**
```
Input: height = [1,2,1]
Output: 2
```

**Constraints:**
- `2 <= height.length <= 3 * 10⁴`
- `0 <= height[i] <= 3 * 10⁴`
