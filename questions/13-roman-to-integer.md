# Roman to Integer

[0000013] (Easy)

- https://leetcode.com/problems/roman-to-integer/

Topic Tags:
- [Math](https://leetcode.com/tag/math/)
- [String](https://leetcode.com/tag/string/)

Similar Questions:
- [[0000012](https://leetcode.com/problems/integer-to-roman/)] - [Integer to Roman](./0000012.integer-to-roman.md) (Medium)

## Problem Description

"Roman numerals are represented by seven different symbols: `I`, `V`, `X`, `L`, `C`, `D` and `M`."

```
Symbol       Value
I             1
V             5
X             10
L             50
C             100
D             500
M             1000
```

The problem explains that Roman numerals are typically written from largest to smallest, left to right, but there are special subtraction cases:

- `I` can be placed before `V` (5) and `X` (10) to make 4 and 9
- `X` can be placed before `L` (50) and `C` (100) to make 40 and 90  
- `C` can be placed before `D` (500) and `M` (1000) to make 400 and 900

**Examples:**
- Input: "III" → Output: 3
- Input: "IV" → Output: 4
- Input: "IX" → Output: 9
- Input: "LVIII" → Output: 58
- Input: "MCMXCIV" → Output: 1994

**Constraints:**
- `1 <= s.length <= 15`
- `s` contains only the characters `('I', 'V', 'X', 'L', 'C', 'D', 'M')`
- "It is **guaranteed** that `s` is a valid roman numeral in the range `[1, 3999]`"

## Solution Templates

### C
```