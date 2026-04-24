# Palindrome Number 回文数

[0000009] (Easy)

- https://leetcode.com/problems/palindrome-number/

Topic Tags:
- [Math 数学](https://leetcode.com/tag/math/)

Similar Questions:
- [[0000234](https://leetcode.com/problems/palindrome-linked-list/)] - [Palindrome Linked List 回文链表](./0000234.palindrome-linked-list.md) (Easy)

"Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward."

**Follow up:** "Could you solve it without converting the integer to a string?"

**Example 1:**
```
Input: x = 121
Output: true
```

**Example 2:**
```
Input: x = -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
```

**Example 3:**
```
Input: x = 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
```

**Example 4:**
```
Input: x = -101
Output: false
```

**Constraints:**
- `-2³¹ <= x <= 2³¹ - 1`

## Solution Templates

### C
```c
bool isPalindrome(int x){

}
```

### Go
```golang
func isPalindrome(x int) bool {

}
```

### Python3
```python
class Solution:
    def isPalindrome(self, x: int) -> bool:
```

### JavaScript
```javascript
var isPalindrome = function (x) {};
```

### Java
```java
class Solution {
    public boolean isPalindrome(int x) {

    }
}
```