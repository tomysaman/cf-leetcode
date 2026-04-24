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

## 翻译

给定两个整数，被除数 `dividend` 和除数 `divisor`。将两数相除，要求不使用乘法、除法和 mod 运算符。

返回被除数除以除数得到的商，整数除法结果应当截去小数部分。

## Solution Templates

The problem provides starter code in multiple languages including C, Go, Python3, JavaScript, and Java, each with the basic function signature for implementing the division algorithm.