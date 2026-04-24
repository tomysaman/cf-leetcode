# Wildcard Matching

**Problem ID:** 0000044 (Hard)

**Topic Tags:** Greedy, String, Dynamic Programming, Backtracking

## Problem Description

"Given an input string (`s`) and a pattern (`p`), implement wildcard pattern matching with support for `'?'` and `'*'`."

The wildcard characters work as follows:
- `'?'` matches any single character
- `'*'` matches any sequence of characters (including empty sequence)

The matching must cover the entire input string, not just a partial match.

## Examples

**Example 1:**
- Input: s = "aa", p = "a"
- Output: false
- The pattern doesn't match the complete string

**Example 2:**
- Input: s = "aa", p = "*"  
- Output: true
- The asterisk matches any sequence

**Example 3:**
- Input: s = "cb", p = "?a"
- Output: false
- Question mark matches 'c' but 'a' doesn't match 'b'

**Example 4:**
- Input: s = "adceb", p = "*a*b"
- Output: true
- First '*' matches empty string, second '*' matches "dce"

## Solution Templates

The problem provides starter code in multiple languages including C, Go, Python3, JavaScript, and Java, with empty function implementations for candidates to complete.

This is a classic dynamic programming problem that can also be solved using greedy algorithms or backtracking approaches.