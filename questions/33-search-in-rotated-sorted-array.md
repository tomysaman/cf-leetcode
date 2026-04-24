# Search in Rotated Sorted Array

[0000033] (Medium)

- https://leetcode.com/problems/search-in-rotated-sorted-array/

Topic Tags:
- [Array](https://leetcode.com/tag/array/)
- [Binary Search](https://leetcode.com/tag/binary-search/)

Similar Questions:
- [[0000081]] - Search in Rotated Sorted Array II (Medium)
- [[0000153]] - Find Minimum in Rotated Sorted Array (Medium)

## Problem Description

"You are given an integer array `nums` sorted in ascending order, and an integer `target`."

"Suppose that `nums` is rotated at some pivot unknown to you beforehand" - for example, `[0,1,2,4,5,6,7]` might become `[4,5,6,7,0,1,2]`.

"If `target` is found in the array return its index, otherwise, return `-1`."

**Examples:**
- Input: `nums = [4,5,6,7,0,1,2], target = 0` → Output: `4`
- Input: `nums = [4,5,6,7,0,1,2], target = 3` → Output: `-1`
- Input: `nums = [1], target = 0` → Output: `-1`

**Constraints:**
- `1 <= nums.length <= 5000`
- `-10^4 <= nums[i] <= 10^4`
- "All values of `nums` are **unique**"
- "nums is guranteed to be rotated at some pivot"
- `-10^4 <= target <= 10^4`

## Solution Templates

### C
```c
int search(int* nums, int numsSize, int target){

}
```

### Go
```golang
func search(nums []int, target int) int {

}
```

### Python3
```python
class Solution:
    def search(self, nums: List[int], target: int)