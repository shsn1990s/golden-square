class TodoList
  def initialize
    @todolist = []
  end

  def add(todo) # todo is an instance of Todo
    @todolist.push(todo)
  end

  def incomplete
    # Returns all remaining todos
    remaining = @todolist.filter do |todo|
      todo.done? == false
    end
    return remaining
  end

  def complete
    # Returns all complete todos
    completed = @todolist.filter do |todo|
      todo.done? == true
    end
    return completed
  end

  def give_up!
    # Marks all todos as complete
    @todolist.each do |todo|
      todo.mark_done!
    end
  end
end