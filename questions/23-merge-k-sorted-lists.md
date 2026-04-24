# Merge k Sorted Lists 合并 K 个升序链表

[0000023] (Hard)

- https://leetcode.com/problems/merge-k-sorted-lists/

Topic Tags:
- [Heap 堆](https://leetcode.com/tag/heap/)
- [Linked List 链表](https://leetcode.com/tag/linked-list/)
- [Divide and Conquer 分治算法](https://leetcode.com/tag/divide-and-conquer/)

Similar Questions:
- [[0000021](https://leetcode.com/problems/merge-two-sorted-lists/)] - [Merge Two Sorted Lists 合并两个有序链表](./0000021.merge-two-sorted-lists.md) (Easy)
- [[0000264](https://leetcode.com/problems/ugly-number-ii/)] - [Ugly Number II 丑数 II](./0000264.ugly-number-ii.md) (Medium)

## Problem Description

"You are given an array of `k` linked-lists `lists`, each linked-list is sorted in ascending order."

"_Merge all the linked-lists into one sorted linked-list and return it._"

**Example 1:**
```
Input: lists = [[1,4,5],[1,3,4],[2,6]]
Output: [1,1,2,3,4,4,5,6]
Explanation: The linked-lists are:
[
  1->4->5,
  1->3->4,
  2->6
]
merging them into one sorted list:
1->1->2->3->4->4->5->6
```

**Example 2:**
```
Input: lists = []
Output: []
```

**Example 3:**
```
Input: lists = [[]]
Output: []
```

**Constraints:**
- `k == lists.length`
- `0 <= k <= 10^4`
- `0 <= lists[i].length <= 500`
- `-10^4 <= lists[i][