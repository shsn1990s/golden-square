require 'todo'

RSpec.describe Todo do
  it "initializes a list with a single entry" do
    todo = Todo.new("Task 1")
    expect(todo.task).to eq "Task 1"
  end
  it "returns false to confirm task is incomplete" do
    todo = Todo.new("Task 1")
    expect(todo.done?).to eq false
  end
  it "marks the status of the task as done" do
    todo = Todo.new("Task 1")
    todo.mark_done!
    expect(todo.done?).to eq true
  end
end