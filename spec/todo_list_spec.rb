require 'Todo_list'

RSpec.describe TodoList do
  it "add task into list" do
    todolist = TodoList.new
    # todolist.add("Task for Completion")
    # expect(todolist.add).to eq true
    expect { todolist.add("A new task") }.to change { todolist.view.length }.from(0).to(1) 
  end

  it "Views all tasks within list" do
    todolist = TodoList.new
    todolist.add("New Task")
    expect(todolist.view).to eq ["New Task"]
  end

  it "Marks task as completed" do
    todolist = TodoList.new
    todolist.add("Task 1")
    todolist.add("Task 2")
    todolist.complete("Task 1")
    expect(todolist.view).not_to eq ["Task 1"]
  end
end