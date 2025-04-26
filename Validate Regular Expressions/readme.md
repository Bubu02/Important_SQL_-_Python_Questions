# Valid Regex Checker

## Problem Statement

You are given a string.  
Your task is to determine whether the given string is a valid regular expression or not.

### **Input Format**
1. The first line contains an integer `n`, the number of test cases.
2. The next `n` lines contain the string `s` to be tested.

### **Constraints**
- The string may contain special regex characters.
- You must determine if it is valid or invalid as a regex.

### **Output Format**
For each test case, print `"True"` if the string is a valid regex, otherwise print `"False"`.

---

### **Example**

#### **Input**
2 .\+ .+

**Output**:
True False


## Solution
The following Python code solves the problem by using the `re` module to validate whether a string is a proper regular expression.

```python
import re

if __name__ == "__main__":
    n = int(input())  # Number of test cases
    for _ in range(n):
        test_string = input()  # Input string
        try:
            re.compile(test_string)  # Attempt to compile the regex
            print("True")  # If successful, it is a valid regex
        except re.error:
            print("False")  # If re.error is raised, it is invalid
