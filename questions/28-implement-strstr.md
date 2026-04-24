# Implement strStr() 实现 strStr()

**Problem:** [0000028] (Easy)

**Topic Tags:** Two Pointers, String

## Problem Description

Implement the strStr() function that returns the index of the first occurrence of needle in haystack, or -1 if needle is not found.

**Key Points:**
- When needle is empty, return 0
- Find the first occurrence position (0-indexed)
- Return -1 if no match exists

## Examples

**Example 1:**
```
Input: haystack = "hello", needle = "ll"
Output: 2
```

**Example 2:**
```
Input: haystack = "aaaaa", needle = "bba"  
Output: -1
```

**Example 3:**
```
Input: haystack = "", needle = ""
Output: 0
```

## Constraints

- `0 <= haystack.length, needle.length <= 5 * 10^4`
- Both strings contain only lowercase English characters

## Solution Templates

**Python:**
```python
class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
```

**Java:**
```java
class Solution {
    public int strStr(String haystack, String needle) {
    }
}
```

**JavaScript:**
```javascript
var strStr = function (haystack, needle) {};
```

**Go:**
```golang
func strStr(haystack string, needle string) int {
}
```

**C:**
```c
int strStr(char * haystack, char * needle){
}
```

This classic string matching problem can be solved using various approaches including brute force, KMP algorithm, or built-in string methods.