# Longest Valid Parentheses 最长有效括号

[0000032] (Hard)

- https://leetcode.com/problems/longest-valid-parentheses/

Topic Tags:

- [String 字符串](https://leetcode.com/tag/string/)
- [Dynamic Programming 动态规划](https://leetcode.com/tag/dynamic-programming/)

Similar Questions:

- [[0000020](https://leetcode.com/problems/valid-parentheses/)] - [Valid Parentheses 有效的括号](./0000020.valid-parentheses.md) (Easy)

"Given a string containing just the characters `'('` and `')'`, find the length of the longest valid (well-formed) parentheses substring."

**Example 1:**

```
Input: s = "(()"
Output: 2
Explanation: The longest valid parentheses substring is "()".
```

**Example 2:**

```
Input: s = ")()())"
Output: 4
Explanation: The longest valid parentheses substring is "()()".
```

**Example 3:**

```
Input: s = ""
Output: 0
```

**Constraints:**

- `0 <= s.length <= 3 * 10^4`
- `s[i]` is `'('`, or `')'`.

## 翻译

"给定一个只包含 `'('` 和 `')'` 的字符串，找出最长的包含有效括号的子串的长度。"

**示例 1:**

```
输入: "(()"
输出: 2
解释: 最长有效括号子串为 "()"
```

**示例 2:**

```
输入: ")()())"
输出: 4
解释: 最长有效括号子串为 "()()"
```

## solution 题解

### C

```c
int longestValidParentheses(char * s){

}
```

### Go

```golang
func longestValidParenth