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