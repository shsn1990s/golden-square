require "task_formatter"

RSpec.describe TaskFormatter do
  it "Returns the task formatted as incomplete" do
    task = double :task, title: "Mystery Novel", complete?: false
    taskformatter = TaskFormatter.new(task)
    expect(taskformatter.format).to eq "- [ ] Mystery Novel"
  end
  it "Returns the task formatted as complete" do
    task = double :task, title: "Mystery Novel", complete?: true
    taskformatter = TaskFormatter.new(task)
    expect(taskformatter.format).to eq "- [x] Mystery Novel"
  end
end