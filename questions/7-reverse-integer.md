# Reverse Integer 整数反转

[0000007] (Easy)

- https://leetcode.com/problems/reverse-integer/

Topic Tags:
- [Math 数学](https://leetcode.com/tag/math/)

Similar Questions:
- [[0000008](https://leetcode.com/problems/string-to-integer-atoi/)] - [String to Integer (atoi) 字符串转换整数 (atoi)](./0000008.string-to-integer-atoi.md) (Medium)
- [[0000190](https://leetcode.com/problems/reverse-bits/)] - [Reverse Bits 颠倒二进制位](./0000190.reverse-bits.md) (Easy)

## Problem Description

"Given a 32-bit signed integer, reverse digits of an integer."

**Note:**  
"Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−2³¹, 2³¹ − 1]." The function should "returns 0 when the reversed integer overflows."

**Examples:**

- Input: x = 123, Output: 321
- Input: x = -123, Output: -321  
- Input: x = 120, Output: 21
- Input: x = 0, Output: 0

**Constraints:**
- `-2³¹ <= x <= 2³¹ - 1`

## 翻译

"给出一个 32 位的有符号整数，你需要将这个整数中每位上的数字进行反转。"

**注意:**
"假设我们的环境只能存储得下 32 位的有符号整数，则其数值范围为 [−2³¹, 2³¹ − 1]。请根据这个假设，如果反转后整数溢出那么就返回 0。"

## Solution Templates

### C
```c
int reverse(int x){

}
```

### Go
```golang
func reverse(