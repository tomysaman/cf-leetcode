# Integer to Roman

[0000012] (Medium)

- https://leetcode.com/problems/integer-to-roman/

Topic Tags:
- [Math](https://leetcode.com/tag/math/)
- [String](https://leetcode.com/tag/string/)

Similar Questions:
- [[0000013](https://leetcode.com/problems/roman-to-integer/)] - [Roman to Integer](./0000013.roman-to-integer.md) (Easy)
- [[0000273](https://leetcode.com/problems/integer-to-english-words/)] - [Integer to English Words](./0000273.integer-to-english-words.md) (Hard)

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

The problem explains that Roman numerals follow specific rules, including subtraction cases where smaller numerals precede larger ones in six specific instances:

- `I` before `V` (5) and `X` (10) creates 4 and 9
- `X` before `L` (50) and `C` (100) creates 40 and 90  
- `C` before `D` (500) and `M` (1000) creates 400 and 900

**Examples:**
- Input: 3 → Output: "III"
- Input: 4 → Output: "IV"
- Input: 58 → Output: "LVIII"
- Input: 1994 → Output: "MCMXCIV"

**Constraints:** `1 <= num <= 3999`

## Solution Templates

### C
```c
char * intToRoman(int num){

}
```

### Go
```golang
func intToRoman(num