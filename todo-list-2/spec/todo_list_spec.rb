require 'todo_list'

RSpec.describe TodoList do
  it "initialize - returns an empty todo list" do
    todo_list = TodoList.new
    #todo1 = Todo.new("Task 1")
    expect(todo_list.incomplete).to eq []
  end
end