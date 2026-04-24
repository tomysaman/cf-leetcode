# Sudoku Solver 解数独

[0000037] (Hard)

- https://leetcode.com/problems/sudoku-solver/

Topic Tags:
- [Hash Table 哈希表](https://leetcode.com/tag/hash-table/)
- [Backtracking 回溯算法](https://leetcode.com/tag/backtracking/)

Similar Questions:
- [[0000036](https://leetcode.com/problems/valid-sudoku/)] - [Valid Sudoku 有效的数独](./0000036.valid-sudoku.md) (Medium)
- [[0001022](https://leetcode.com/problems/unique-paths-iii/)] - [Unique Paths III 不同路径 III](./0001022.unique-paths-iii.md) (Hard)

## Problem Description

"Write a program to solve a Sudoku puzzle by filling the empty cells."

"A sudoku solution must satisfy **all of the following rules**:"

1. "Each of the digits `1-9` must occur exactly once in each row."
2. "Each of the digits `1-9` must occur exactly once in each column."  
3. "Each of the digits `1-9` must occur exactly once in each of the 9 `3x3` sub-boxes of the grid."

"The `'.'` character indicates empty cells."

**Example 1:**

Input: board = [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]

Output: [["5","3","4","