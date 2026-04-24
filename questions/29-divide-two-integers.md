# Divide Two Integers 两数相除

[0000029] (Medium)

- https://leetcode.com/problems/divide-two-integers/

Topic Tags:
- [Math 数学](https://leetcode.com/tag/math/)
- [Binary Search 二分查找](https://leetcode.com/tag/binary-search/)

## Problem Description

"Given two integers `dividend` and `divisor`, divide two integers without using multiplication, division, and mod operator."

The task requires returning the quotient while ensuring "integer division should truncate toward zero, which means losing its fractional part."

**Examples:**
- Input: dividend = 10, divisor = 3 → Output: 3
- Input: dividend = 7, divisor = -3 → Output: -2
- Input: dividend = 0, divisor = 1 → Output: 0

**Constraints:**
- Values range from -2³¹ to 2³¹ - 1
- "divisor != 0"
- Return 2³¹ - 1 when division result overflows

## Solution Templates

The problem provides starter code in multiple languages including C, Go, Python3, JavaScript, and Java, each with the basic function signature for implementing the division algorithm.