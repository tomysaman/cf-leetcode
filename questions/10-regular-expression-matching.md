# Regular Expression Matching 正则表达式匹配

[0000010] (Hard)

- https://leetcode.com/problems/regular-expression-matching/

Topic Tags:
- String 字符串
- Dynamic Programming 动态规划  
- Backtracking 回溯算法

Similar Questions:
- [0000044] Wildcard Matching 通配符匹配 (Hard)

## Problem Description

Given an input string (`s`) and a pattern (`p`), implement regular expression matching with support for `'.'` and `'*'` where:

- `'.'` Matches any single character
- `'*'` Matches zero or more of the preceding element

The matching should cover the **entire** input string (not partial).

## Examples

**Example 1:**
```
Input: s = "aa", p = "a"
Output: false
Explanation: "a" does not match the entire string "aa"
```

**Example 2:**
```
Input: s = "aa", p = "a*"  
Output: true
Explanation: '*' means zero or more of the preceding element 'a'
```

**Example 3:**
```
Input: s = "ab", p = ".*"
Output: true
Explanation: ".*" means "zero or more (*) of any character (.)"
```

## Constraints

- `0 <= s.length <= 20`
- `0 <= p.length <= 30`
- `s` contains only lowercase English letters
- `p` contains only lowercase English letters, `'.'`, and `'*'`

## Solution Templates

### Python3
```python
class Solution:
    def isMatch(self, s: str, p: str) -> bool:
```

### Java
```java
class Solution {
    public boolean isMatch(String s, String p) {

    }
}
```

### JavaScript
```javascript
var isMatch = function (s, p) {};
```

### Go
```golang
func isMatch(s string, p string) bool {

}
```

### C
```c
bool isMatch(char * s, char * p){