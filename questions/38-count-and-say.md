# Count and Say 外观数列

**Problem ID:** 0000038 (Easy)

**Topic Tags:** String 字符串

## Problem Description

The count-and-say sequence generates each term by describing the previous term. The first five terms are:

```
1.     1
2.     11  
3.     21
4.     1211
5.     111221
```

The pattern works as follows:
- `1` is read as "one 1" → `11`
- `11` is read as "two 1s" → `21` 
- `21` is read as "one 2, then one 1" → `1211`

Given an integer n (1 ≤ n ≤ 30), generate the nth term of this sequence.

## Examples

**Example 1:**
- Input: 1
- Output: "1"

**Example 2:** 
- Input: 4
- Output: "1211"
- Explanation: For n=3, the term is "21" which has groups "2" and "1". Reading "2" as "12" (frequency=1, value=2) and "1" as "11" gives "1211".

## Solution Templates

The problem provides empty function templates in multiple languages:

**Python:**
```python
class Solution:
    def countAndSay(self, n: int) -> str:
```

**Java:**
```java
class Solution {
    public String countAndSay(int n) {
    }
}
```

**JavaScript:**
```javascript
var countAndSay = function (n) {};
```

**Go:**
```golang
func countAndSay(n int) string {
}
```

**C:**
```c
char * countAndSay(int n){
}
```

## Related Problems

- Encode and Decode Strings (Medium)
- String Compression (Medium)