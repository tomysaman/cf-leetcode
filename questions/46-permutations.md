# Permutations 全排列

**Problem:** [0000046] (Medium)
- **Link:** https://leetcode.com/problems/permutations/
- **Topic:** Backtracking 回溯算法

## Problem Description

"Given a collection of **distinct** integers, return all possible permutations."

**Example:**
```
Input: [1,2,3]
Output:
[
  [1,2,3],
  [1,3,2],
  [2,1,3],
  [2,3,1],
  [3,1,2],
  [3,2,1]
]
```

## 翻译

"给定一个 **没有重复** 数字的序列，返回其所有可能的全排列。"

## Solution Templates

The problem provides solution templates in multiple languages:

**Python3:**
```python
class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
```

**Java:**
```java
class Solution {
    public List<List<Integer>> permute(int[] nums) {
    }
}
```

**JavaScript:**
```javascript
var permute = function (nums) {};
```

**Go:**
```golang
func permute(nums []int) [][]int {
}
```

**C:**
```c
int** permute(int* nums, int numsSize, int* returnSize, int** returnColumnSizes){
}
```

## Related Problems

- Next Permutation 下一个排列 (Medium)
- Permutations II 全排列 II (Medium) 
- Permutation Sequence 第 k 个排列 (Hard)
- Combinations 组合 (Medium)