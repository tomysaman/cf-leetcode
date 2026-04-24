# Substring with Concatenation of All Words

[0000030] (Hard)

- https://leetcode.com/problems/substring-with-concatenation-of-all-words/

Topic Tags:
- [Hash Table](https://leetcode.com/tag/hash-table/)
- [Two Pointers](https://leetcode.com/tag/two-pointers/)
- [String](https://leetcode.com/tag/string/)

Similar Questions:
- [[0000076](https://leetcode.com/problems/minimum-window-substring/)] - [Minimum Window Substring](./0000076.minimum-window-substring.md) (Hard)

## Problem Description

"You are given a string `s` and an array of strings `words` of **the same length**. Return all starting indices of substring(s)"

The task requires finding substrings that concatenate each word from the array exactly once, in any order, without intervening characters.

**Example 1:**
```
Input: s = "barfoothefoobarman", words = ["foo","bar"]
Output: [0,9]
```

**Example 2:**
```
Input: s = "wordgoodgoodgoodbestword", words = ["word","good","best","word"]
Output: []
```

**Example 3:**
```
Input: s = "barfoofoobarthefoobarman", words = ["bar","foo","the"]
Output: [6,9,12]
```

**Constraints:**
- `1 <= s.length <= 10⁴`
- `s` consists of lower-case English letters
- `1 <= words.length <= 5000`
- `1 <= words[i].length <= 30`
- `words[i]` consists of lower-case English letters

## Solution Templates

The problem provides solution templates in multiple programming languages including C, Go, Python3, JavaScript, and Java, each with the appropriate function signature for implementing the algorithm.