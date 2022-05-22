class Todo
  def initialize
    @todolist = []
  end

  def add(text)
    @todolist << text unless text.empty?
  end

  def view
    @todolist
  end

  def complete(text)
    @todolist.delete(text)
  end
end