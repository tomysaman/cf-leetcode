# Group Anagrams

[0000049] (Medium)

- https://leetcode.com/problems/group-anagrams/

Topic Tags:
- [Hash Table](https://leetcode.com/tag/hash-table/)
- [String](https://leetcode.com/tag/string/)

Similar Questions:
- [[0000242](https://leetcode.com/problems/valid-anagram/)] - [Valid Anagram](./0000242.valid-anagram.md) (Easy)
- [[0000249](https://leetcode.com/problems/group-shifted-strings/)] - [Group Shifted Strings](./0000249.group-shifted-strings.md) (Medium) (Plus)

## Problem Description

"Given an array of strings `strs`, group **the anagrams** together. You can return the answer in **any order**."

"An **Anagram** is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once."

**Example 1:**
```
Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
```

**Example 2:**
```
Input: strs = [""]
Output: [[""]]
```

**Example 3:**
```
Input: strs = ["a"]
Output: [["a"]]
```

**Constraints:**
- `1 <= strs.length <= 10^4`
- `0 <= strs[i].length <= 100`
- `strs[i]` consists of lower-case English letters.
