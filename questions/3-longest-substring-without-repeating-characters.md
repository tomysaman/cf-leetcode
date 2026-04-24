# Longest Substring Without Repeating Characters 无重复字符的最长子串

[0000003] (Medium)

- https://leetcode.com/problems/longest-substring-without-repeating-characters/

Topic Tags:
- [Hash Table 哈希表](https://leetcode.com/tag/hash-table/)
- [Two Pointers 双指针](https://leetcode.com/tag/two-pointers/)
- [String 字符串](https://leetcode.com/tag/string/)
- [Sliding Window null](https://leetcode.com/tag/sliding-window/)

Similar Questions:
- [[0000159]] - [Longest Substring with At Most Two Distinct Characters 至多包含两个不同字符的最长子串] (Medium) (Plus)
- [[0000340]] - [Longest Substring with At Most K Distinct Characters 至多包含 K 个不同字符的最长子串] (Hard) (Plus)
- [[0001034]] - [Subarrays with K Different Integers K 个不同整数的子数组] (Hard)

## Problem Statement

"Given a string `s`, find the length of the **longest substring** without repeating characters."

**Example 1:**
```
Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
```

**Example 2:**
```
Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
```

**Example 3:**
```
Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
```

**Example 4:**
```
Input: s = ""
Output: 0
```

**Constraints:**
- `0 <= s.length <= 5 * 10^4`
- `s`