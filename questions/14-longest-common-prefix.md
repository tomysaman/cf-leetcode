# Longest Common Prefix 最长公共前缀

[0000014] (Easy)

- https://leetcode.com/problems/longest-common-prefix/

Topic Tags:
- [String 字符串](https://leetcode.com/tag/string/)

"Write a function to find the longest common prefix string amongst an array of strings."

"If there is no common prefix, return an empty string `""`."

**Example 1:**
```
Input: strs = ["flower","flow","flight"]
Output: "fl"
```

**Example 2:**
```
Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
```

**Constraints:**
- `0 <= strs.length <= 200`
- `0 <= strs[i].length <= 200`
- `strs[i]` consists of only lower-case English letters.

## 翻译

"编写一个函数来查找字符串数组中的最长公共前缀。"

"如果不存在公共前缀，返回空字符串 `""`。"

**示例 1:**
```
输入: ["flower","flow","flight"]
输出: "fl"
```

**示例 2:**
```
输入: ["dog","racecar","car"]
输出: ""
解释: 输入不存在公共前缀。
```

**说明:**
所有输入只包含小写字母 `a-z`。

## solution 题解

### C
```c
char * longestCommonPrefix(char ** strs, int strsSize){

}
```

### Go
```golang
func longestCommonPrefix(strs []string) string {

}
```

### Python3
```python
class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
```

### JavaScript
```javascript
/**
 * @param {string[]} strs
 * @return {string}
 */
var longest