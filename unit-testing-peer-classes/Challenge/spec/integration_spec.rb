require 'task'
require 'task_formatter'

RSpec.describe "Integration" do
  it "Returns the task formatted as incomplete" do
    task = Task.new("Task 1")
    taskformatter = TaskFormatter.new(task)
    expect(taskformatter.format).to eq "- [ ] Task 1"
  end
  it "Returns the task formatted as complete" do
    task = Task.new("Task 1")
    taskformatter = TaskFormatter.new(task)
    task.completetask
    expect(taskformatter.format).to eq "- [x] Task 1"
  end

end