class TodoList
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def view
    return @tasks
  end
  
  def complete(task)
    @tasks.delete(task)
  end
end