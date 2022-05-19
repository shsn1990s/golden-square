Todo List - Class Design Recipe
1. Describe the Problem
Follow the design recipe to implement the following user stories in your project. Both of these will be within a single class.

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

Don't worry about user input & output here.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

class Todo
def initialize
@task = []

def add(task) # task is a string
return @task

def view
return @task

def complete(task) # task is a string
task.delete


3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# 1
add("Task for Completion")
# => "Task for Completion"

# 2
add("Task for Completion")
view
# => "Task for Completion"

# 3
complete("Task for Completion")
view
# => []

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.