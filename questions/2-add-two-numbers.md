# Add Two Numbers

[0000002] (Medium)

- https://leetcode.com/problems/add-two-numbers/

Topic Tags:

- [Linked List](https://leetcode.com/tag/linked-list/)
- [Math](https://leetcode.com/tag/math/)

Similar Questions:

- [[0000043](https://leetcode.com/problems/multiply-strings/)] - [Multiply Strings](./0000043.multiply-strings.md) (Medium)
- [[0000067](https://leetcode.com/problems/add-binary/)] - [Add Binary](./0000067.add-binary.md) (Easy)
- [[0000371](https://leetcode.com/problems/sum-of-two-integers/)] - [Sum of Two Integers](./0000371.sum-of-two-integers.md) (Easy)
- [[0000415](https://leetcode.com/problems/add-strings/)] - [Add Strings](./0000415.add-strings.md) (Easy)
- [[0000445](https://leetcode.com/problems/add-two-numbers-ii/)] - [Add Two Numbers II](./0000445.add-two-numbers-ii.md) (Medium)
- [[0001031](https://leetcode.com/problems/add-to-array-form-of-integer/)] - [Add to Array-Form of Integer](./0001031.add-to-array-form-of-integer.md) (Easy)

## Problem Description

You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each node contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zeros, except the number 0 itself.

**Example 1:**

![](https://assets.leetcode.com/uploads/2020/10/02/addtwonumber1.jpg)

```
Input: l1 = [2,4,3], l2 = [5,6,4]
Output: [7,0,8]
Explanation: 342 + 465 = 807.
```

**Example 2:**

```
Input: l1 = [0], l2 = [0]
Output: [0]
```

**Example 3:**

```
Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
Output: [8,9,9,9,0,0,0,1]
```

**Constraints:**

- The number of nodes in each linked list is in the range `[1, 100]`.
- `0 <= Node.val <= 9`
- It is guaranteed that the list represents a number that does not have leading zeros.