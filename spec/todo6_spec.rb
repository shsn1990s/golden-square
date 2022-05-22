require 'todo6'

RSpec.describe Todo do
  it "Adds an entry into the array list and is viewable" do
    todo = Todo.new
    todo.add("Get Groceries")
    expect(todo.view).to eq ["Get Groceries"]
  end
  it "Adds two entries into the array list and both entries are viewable" do
    todo = Todo.new
    todo.add("Get Groceries")
    todo.add("Get Shopping")
    expect(todo.view).to eq ["Get Groceries", "Get Shopping"]
  end
  it "Adds empty todo, which should not be added" do
    todo = Todo.new
    todo.add("")
    expect(todo.view).to eq []
  end
  it "Marks todo as commpleted and removes from list" do
    todo = Todo.new
    todo.add("Get Groceries")
    todo.complete("Get Groceries")
    expect(todo.view).to eq []
  end
  it "Value does not exist in list, but complete method called" do
    todo = Todo.new
    todo.complete("Get Groceries")
    expect(todo.view).to eq []
  end
  it "Adds three items ot list and removes the middle entry" do
    todo = Todo.new
    todo.add("Get Newspaper")
    todo.add("Get Groceries")
    todo.add("Get Reservation")
    todo.complete("Get Groceries")
    expect(todo.view).to eq ["Get Newspaper", "Get Reservation"]
  end
end