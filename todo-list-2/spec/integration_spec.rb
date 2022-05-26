require 'todo_list'
require 'todo'

RSpec.describe "Todo Integration" do
  it "Adds a todo entry into the todo list" do
    todolist = TodoList.new
    todo = Todo.new("Task 1")
    todolist.add(todo)
    expect(todolist.incomplete).to eq [todo]
  end
  it "Displays all incomplete todos, it should only return Task 1 and 3" do
    todolist = TodoList.new
    todo1 = Todo.new("Task 1")
    todo2 = Todo.new("Task 2")
    todo3 = Todo.new("Task 3")
    todolist.add(todo1)
    todolist.add(todo2)
    todolist.add(todo3)
    todo2.mark_done!
    expect(todolist.incomplete).to eq [todo1, todo3]
  end
  it "Displays all complete todos, it should only return Task 3" do
    todolist = TodoList.new
    todo1 = Todo.new("Task 1")
    todo2 = Todo.new("Task 2")
    todo3 = Todo.new("Task 3")
    todolist.add(todo1)
    todolist.add(todo2)
    todolist.add(todo3)
    todo3.mark_done!
    expect(todolist.complete).to eq [todo3]
  end
  it "Marks all the todos as complete" do
    todolist = TodoList.new
    todo1 = Todo.new("Task 1")
    todo2 = Todo.new("Task 2")
    todo3 = Todo.new("Task 3")
    todolist.add(todo1)
    todolist.add(todo2)
    todolist.add(todo3)
    todolist.give_up!
    expect(todolist.incomplete).to eq []
  end
end