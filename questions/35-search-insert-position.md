# Search Insert Position

[0000035] (Easy)

- https://leetcode.com/problems/search-insert-position/

Topic Tags:
- [Array](https://leetcode.com/tag/array/)
- [Binary Search](https://leetcode.com/tag/binary-search/)

Similar Questions:
- [[0000278](https://leetcode.com/problems/first-bad-version/)] - [First Bad Version](./0000278.first-bad-version.md) (Easy)

## Problem Description

"Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order."

**Examples:**

- Input: `nums = [1,3,5,6], target = 5` → Output: `2`
- Input: `nums = [1,3,5,6], target = 2` → Output: `1`
- Input: `nums = [1,3,5,6], target = 7` → Output: `4`
- Input: `nums = [1,3,5,6], target = 0` → Output: `0`
- Input: `nums = [1], target = 0` → Output: `0`

**Constraints:**
- `1 <= nums.length <= 10⁴`
- `-10⁴ <= nums[i] <= 10⁴`
- Array contains distinct values in ascending order
- `-10⁴ <= target <= 10⁴`

## Solution Templates

### C
```c
int searchInsert(int* nums, int numsSize, int target){

}
```

###