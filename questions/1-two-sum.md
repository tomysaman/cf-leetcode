# Two Sum

[0000001] (Easy)

- https://leetcode.com/problems/two-sum/

Topic Tags:

- [Array](https://leetcode.com/tag/array/)
- [Hash Table](https://leetcode.com/tag/hash-table/)

Similar Questions:

- [[0000015](https://leetcode.com/problems/3sum/)] - [3Sum](./0000015.3sum.md) (Medium)
- [[0000018](https://leetcode.com/problems/4sum/)] - [4Sum](./0000018.4sum.md) (Medium)
- [[0000167](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/)] - [Two Sum II - Input array is sorted](./0000167.two-sum-ii-input-array-is-sorted.md) (Easy)
- [[0000170](https://leetcode.com/problems/two-sum-iii-data-structure-design/)] - [Two Sum III - Data structure design](./0000170.two-sum-iii-data-structure-design.md) (Easy) (Plus)
- [[0000560](https://leetcode.com/problems/subarray-sum-equals-k/)] - [Subarray Sum Equals K](./0000560.subarray-sum-equals-k.md) (Medium)
- [[0000653](https://leetcode.com/problems/two-sum-iv-input-is-a-bst/)] - [Two Sum IV - Input is a BST](./0000653.two-sum-iv-input-is-a-bst.md) (Easy)
- [[0001083](https://leetcode.com/problems/two-sum-less-than-k/)] - [Two Sum Less Than K](./0001083.two-sum-less-than-k.md) (Easy) (Plus)

Given an array of integers `nums` and an integer `target`, return _indices of the two numbers such that they add up to `target`_.

You may assume that each input would have **_exactly one solution_**, and you may not use the _same_ element twice.

You can return the answer in any order.

**Example 1:**

```
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Output: Because nums[0] + nums[1] == 9, we return [0, 1].
```

**Example 2:**

```
Input: nums = [3,2,4], target = 6
Output: [1,2]
```

**Example 3:**

```
Input: nums = [3,3], target = 6
Output: [0,1]
```

**Constraints:**

- `2 <= nums.length <= 10^4`
- `-10^9 <= nums[i] <= 10^9`
- `-10^9 <= target <= 10^9`
- **Only one valid answer exists.**

**Follow-up:** Can you come up with an algorithm that is less than `O(n^2)` time complexity?