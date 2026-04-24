# Pow(x, n)

**Problem Number:** 0000050 (Medium)

**Topic Tags:** Math, Binary Search

## Problem Description

"Implement pow(x, n), which calculates x raised to the power n (i.e. x^n)."

## Examples

**Example 1:**
- Input: x = 2.00000, n = 10
- Output: 1024.00000

**Example 2:**
- Input: x = 2.10000, n = 3  
- Output: 9.26100

**Example 3:**
- Input: x = 2.00000, n = -2
- Output: 0.25000
- Explanation: 2^-2 = 1/2^2 = 1/4 = 0.25

## Constraints

- -100.0 < x < 100.0
- -2^31 ≤ n ≤ 2^31-1
- -10^4 ≤ x^n ≤ 10^4

## Solution Templates

The problem provides starter code templates in multiple programming languages:

**Python:**
```python
class Solution:
    def myPow(self, x: float, n: int) -> float:
```

**Java:**
```java
class Solution {
    public double myPow(double x, int n) {
    }
}
```

**JavaScript:**
```javascript
var myPow = function (x, n) {};
```

**Go:**
```golang
func myPow(x float64, n int) float64 {
}
```

**C:**
```c
double myPow(double x, int n){
}
```

## Related Problems

- Sqrt(x) (Easy)
- Super Pow (Medium)

This is a classic algorithmic problem that can be solved efficiently using techniques like fast exponentiation or binary search approaches.