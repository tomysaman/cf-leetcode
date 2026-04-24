# String to Integer (atoi) (atoi)

**Problem ID:** 0000008 (Medium)

**Topic Tags:** Math, String

## Problem Description

Implement `atoi` which converts a string to an integer following these rules:

1. "The function first discards as many whitespace characters as necessary until the first non-whitespace character is found"
2. Parse an optional plus or minus sign followed by numerical digits
3. "The string can contain additional characters after those that form the integral number, which are ignored"
4. Return 0 if no valid conversion can be performed

**Constraints:**
- Only space character `' '` is considered whitespace
- Handle 32-bit signed integer range: [−2³¹, 2³¹ − 1]
- Return INT_MAX or INT_MIN if out of range

## Examples

**Example 1:**
```
Input: str = "42"
Output: 42
```

**Example 2:**
```
Input: str = "   -42"
Output: -42
```

**Example 3:**
```
Input: str = "4193 with words"
Output: 4193
```

**Example 4:**
```
Input: str = "words and 987"
Output: 0
```

**Example 5:**
```
Input: str = "-91283472332"
Output: -2147483648
```

## Solution Templates

### C
```c
int myAtoi(char * s){

}
```

### Go
```golang
func myAtoi(s string) int {

}
```

### Python3
```python
class Solution:
    def myAtoi(self, s: str) -> int:
```

### JavaScript
```javascript
var myAtoi = function (s) {};
```

### Java
```java
class Solution {
    public int myAtoi(String s) {

    }
}
```