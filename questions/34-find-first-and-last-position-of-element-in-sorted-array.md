# Find First and Last Position of Element in Sorted Array

**Problem:** Given a sorted integer array `nums` and a `target` value, find the starting and ending positions of the target. Return `[-1, -1]` if not found.

**Constraints:**
- Time complexity must be O(log n)
- Array length: 0 to 10^5
- Values range: -10^9 to 10^9
- Non-decreasing array

**Examples:**
- `nums = [5,7,7,8,8,10], target = 8` → `[3,4]`
- `nums = [5,7,7,8,8,10], target = 6` → `[-1,-1]`
- `nums = [], target = 0` → `[-1,-1]`

**Approach:** Use binary search twice - once to find the leftmost occurrence and once for the rightmost occurrence of the target value.

**Solution Templates:**

```python
def searchRange(self, nums: List[int], target: int) -> List[int]:
```

```java
public int[] searchRange(int[] nums, int target) {
```

```javascript
var searchRange = function (nums, target) {};
```

The problem requires implementing two binary searches: one finding the first position where `target` could be inserted, and another finding the last position, then validating if the target actually exists at those boundaries.