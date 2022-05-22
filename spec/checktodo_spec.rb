require 'checktodo'

RSpec.describe CheckTodo do
  it "Returns true if #TODO is mentioned at the beginning of the text" do
    todo = CheckTodo.new
    expect(todo.check_todo("#TODO Read Ruby Chapter 4")).to eq true
  end
  it "Returns false if #TODO is not mentioned at all" do
    todo = CheckTodo.new
    expect(todo.check_todo("Read Ruby Chapter 4")).to eq false
  end
  it "Returns true if #TODO us at the end of the string" do
    todo = CheckTodo.new
    expect(todo.check_todo("Read Ruby Chapter 4 #TODO")).to eq true
  end
  it "Returns true if #TODO is mentioned within the string" do
    todo = CheckTodo.new
    expect(todo.check_todo("Read Ruby #TODO Chapter 4")).to eq true
  end
end