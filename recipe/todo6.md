Todo - Section 6 Exercise Method Design Recipe
1. Describe the Problem
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

add(text)
# Adds the text into an an array

view
# Allows all entries from the array to be viewed


3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# 1
adds("Get Groceries")
view => ["Get Groceries"]

# 2
adds("Get Groceries")
adds("Get Shopping")
view => ["Get Groceries", "Get Shopping"]

# 3
adds("")
view => []]

# 4
adds("Get Groceries")
complete("Get Groceries")
view => []]

# 5
complete("Get Groceries")
view => []]

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

