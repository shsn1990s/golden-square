Todo Method Design Recipe
1. Describe the Problem
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

# 'check_todo(text)' Reviews the string to determine if it contains #TODO.
# The method returns true if it is present.

# The method doesn't print anything or have any other side-effects
3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# The tests should return true if #TODO is referenced anywhere within the
# string (beginning, middle or end).

check_todo("#TODO Read Ruby Chapter 4") => true
check_todo("Read Ruby Chapter 4") => false
check_todo("Read Ruby Chapter 4 #TODO") => true
check_todo("Read Ruby #TODO Chapter 4") => true

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

