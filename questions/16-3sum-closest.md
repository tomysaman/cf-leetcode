# 3Sum Closest 最接近的三数之和

[0000016] (Medium)

- https://leetcode.com/problems/3sum-closest/

Topic Tags:
- [Array 数组](https://leetcode.com/tag/array/)
- [Two Pointers 双指针](https://leetcode.com/tag/two-pointers/)

Similar Questions:
- [[0000015](https://leetcode.com/problems/3sum/)] - [3Sum 三数之和](./0000015.3sum.md) (Medium)
- [[0000259](https://leetcode.com/problems/3sum-smaller/)] - [3Sum Smaller 较小的三数之和](./0000259.3sum-smaller.md) (Medium) (Plus)

## Problem Description

"Given an array `nums` of _n_ integers and an integer `target`, find three integers in `nums` such that the sum is closest to `target`."

**Example 1:**
```
Input: nums = [-1,2,1,-4], target = 1
Output: 2
Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
```

**Constraints:**
- `3 <= nums.length <= 10^3`
- `-10^3 <= nums[i] <= 10^3`
- `-10^4 <= target <= 10^4`

## 翻译

"给定一个包括 *n* 个整数的数组 `nums` 和 一个目标值 `target`。找出 `nums` 中的三个整数，使得它们的和与 `target` 最接近。"

## Solution Templates

### C
```c
int threeSumClosest(int* nums, int numsSize, int target){

}
```

### Go
```golang
func threeSumClosest(nums []int, target int) int {

}
```

### Python3
```python
class Solution:
    def threeSumClosest