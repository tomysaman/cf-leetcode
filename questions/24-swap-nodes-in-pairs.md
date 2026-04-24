# Swap Nodes in Pairs 两两交换链表中的节点

[0000024] (Medium)

- https://leetcode.com/problems/swap-nodes-in-pairs/

Topic Tags:
- [Linked List 链表](https://leetcode.com/tag/linked-list/)

Similar Questions:
- [[0000025](https://leetcode.com/problems/reverse-nodes-in-k-group/)] - [Reverse Nodes in k-Group K 个一组翻转链表](./0000025.reverse-nodes-in-k-group.md) (Hard)

## Problem Description

"Given a linked list, swap every two adjacent nodes and return its head."

The constraint is that "You may **not** modify the values in the list's nodes. Only nodes itself may be changed."

**Example 1:**
```
Input: head = [1,2,3,4]
Output: [2,1,4,3]
```

**Example 2:**
```
Input: head = []
Output: []
```

**Example 3:**
```
Input: head = [1]
Output: [1]
```

**Constraints:**
- The number of nodes is in range `[0, 100]`
- `0 <= Node.val <= 100`

## 翻译

"给定一个链表，两两交换其中相邻的节点，并返回交换后的链表。"

"你不能只是单纯的改变节点内部的值，而是需要实际的进行节点交换。"

## Solution Templates

### Python3
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def swapPairs(self, head: ListNode) -> ListNode: