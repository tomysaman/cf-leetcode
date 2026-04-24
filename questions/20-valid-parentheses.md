# Valid Parentheses

[0000020] (Easy)

- https://leetcode.com/problems/valid-parentheses/

Topic Tags:
- [Stack](https://leetcode.com/tag/stack/)
- [String](https://leetcode.com/tag/string/)

Similar Questions:
- [[0000022](https://leetcode.com/problems/generate-parentheses/)] - [Generate Parentheses](./0000022.generate-parentheses.md) (Medium)
- [[0000032](https://leetcode.com/problems/longest-valid-parentheses/)] - [Longest Valid Parentheses](./0000032.longest-valid-parentheses.md) (Hard)
- [[0000301](https://leetcode.com/problems/remove-invalid-parentheses/)] - [Remove Invalid Parentheses](./0000301.remove-invalid-parentheses.md) (Hard)
- [[0001045](https://leetcode.com/problems/check-if-word-is-valid-after-substitutions/)] - [Check If Word Is Valid After Substitutions](./0001045.check-if-word-is-valid-after-substitutions.md) (Medium)

"Given a string `s` containing just the characters `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`, determine if the input string is valid."

An input string is valid if:
1. "Open brackets must be closed by the same type of brackets."
2. "Open brackets must be closed in the correct order."

**Example 1:**
```
Input: s = "()"
Output: true
```

**Example 2:**
```
Input: s = "()[]{}"
Output: true
```

**Example 3:**
```
Input: s = "(]"
Output: false
```

**Example 4:**
```
Input: