# Combination Sum

**Problem:** [0000039] (Medium)

**Topic Tags:** Array, Backtracking

## Problem Description

"Given an array of **distinct** integers `candidates` and a target integer `target`, return _a list of all **unique combinations**_" where chosen numbers sum to the target. "The **same** number may be chosen from `candidates` an **unlimited number of times**."

## Examples

**Example 1:**
- Input: `candidates = [2,3,6,7], target = 7`
- Output: `[[2,2,3],[7]]`

**Example 2:**
- Input: `candidates = [2,3,5], target = 8`  
- Output: `[[2,2,2,2],[2,3,3],[3,5]]`

## Constraints

- `1 <= candidates.length <= 30`
- `1 <= candidates[i] <= 200`
- "All elements of `candidates` are **distinct**"
- `1 <= target <= 500`

## Solution Approach

This is a classic backtracking problem. The key insights are:

1. **Unlimited reuse**: Each candidate can be used multiple times
2. **Avoid duplicates**: Use index-based iteration to prevent duplicate combinations
3. **Pruning**: Stop recursion when current sum exceeds target

The algorithm explores all possible combinations by:
- Including the current candidate (and staying at same index for reuse)
- Skipping to the next candidate
- Backtracking when sum equals target or exceeds it

## Template Solutions

**Python:**
```python
class Solution:
    def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
        # Backtracking implementation needed
```

**Java:**
```java
class Solution {
    public List<List<Integer>> combinationSum(int[] candidates, int target) {
        // Backtracking implementation needed
    }
}
```

**JavaScript:**
```javascript
var combinationSum = function(candidates, target) {
    // Backtracking implementation needed
};
```