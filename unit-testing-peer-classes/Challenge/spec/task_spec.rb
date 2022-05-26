require 'task'

RSpec.describe Task do
  it "returns the task title along with the complete status as false" do
    task = Task.new("Task 1")
    expect(task.title).to eq "Task 1"
    expect(task.complete?).to eq false
  end
  it "returns the task title, marks as complete and returns status as true" do
    task = Task.new("Task 1")
    task.completetask
    expect(task.title).to eq "Task 1"
    expect(task.complete?).to eq true
  end
end