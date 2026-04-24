# Remove Nth Node From End of List 删除链表的倒数第 N 个节点

[0000019] (Medium)

- https://leetcode.com/problems/remove-nth-node-from-end-of-list/

Topic Tags:
- [Linked List 链表](https://leetcode.com/tag/linked-list/)
- [Two Pointers 双指针](https://leetcode.com/tag/two-pointers/)

"Given the `head` of a linked list, remove the `nth` node from the end of the list and return its head."

**Follow up:** Could you do this in one pass?

**Example 1:**
```
Input: head = [1,2,3,4,5], n = 2
Output: [1,2,3,5]
```

**Example 2:**
```
Input: head = [1], n = 1
Output: []
```

**Example 3:**
```
Input: head = [1,2], n = 1
Output: [1]
```

**Constraints:**
- The number of nodes in the list is `sz`
- `1 <= sz <= 30`
- `0 <= Node.val <= 100`
- `1 <= n <= sz`

## 翻译

给定一个链表，删除链表的倒数第 *n* 个节点，并且返回链表的头结点。

**示例：**
```
给定一个链表: 1->2->3->4->5, 和 n = 2.
当删除了倒数第二个节点后，链表变为 1->2->3->5.
```

**说明：** 给定的 *n* 保证是有效的。

**进阶：** 你能尝试使用一趟扫描实现吗？

## Solution Templates

The problem provides solution templates in C, Go, Python3, JavaScript, and Java with the standard ListNode definition and function signatures for implementing the `removeNthFromEnd` function.