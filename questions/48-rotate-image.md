# Rotate Image 旋转图像

[0000048] (Medium)

- https://leetcode.com/problems/rotate-image/

Topic Tags:
- [Array 数组](https://leetcode.com/tag/array/)

## Problem Description

"You are given an _n_ x _n_ 2D `matrix` representing an image, rotate the image by 90 degrees (clockwise)."

The constraint is that "You have to rotate the image **in-place**", meaning you must modify the input matrix directly without allocating another 2D matrix.

## Examples

**Example 1:**
- Input: `matrix = [[1,2,3],[4,5,6],[7,8,9]]`
- Output: `[[7,4,1],[8,5,2],[9,6,3]]`

**Example 2:**
- Input: `matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]`
- Output: `[[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]`

**Example 3:**
- Input: `matrix = [[1]]`
- Output: `[[1]]`

**Example 4:**
- Input: `matrix = [[1,2],[3,4]]`
- Output: `[[3,1],[4,2]]`

## Constraints

- `matrix.length == n`
- `matrix[i].length == n`
- `1 <= n <= 20`
- `-1000 <= matrix[i][j] <= 1000`

## Solution Templates

### Python3
```python
class Solution:
    def rotate(self, matrix: List[List[int]]) -> None:
        """
        Do not return anything, modify matrix in-place instead.
        """
```

### Java
```java
class Solution {
    public void rotate(int[][] matrix) {

    }
}
```

### JavaScript
```javascript
var rotate = function (matrix) {};
```

### Go
```golang
func rotate(matrix