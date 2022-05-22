class CheckTodo

  def check_todo(text)
    search_term = "#TODO"
    return text.include? search_term
  end
  
end