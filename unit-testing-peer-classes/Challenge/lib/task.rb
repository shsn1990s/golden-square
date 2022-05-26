class Task
  def initialize(title)
    @title = title
    @complete = false
  end

  def title
    @title
  end

  def complete?
    return @complete
  end

  def completetask
    @complete = true
  end
end