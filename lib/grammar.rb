class Grammar

  def checkgrammar(text)
    punctuation = [".", "!", "?"]
    if text.chars[0] == (text.chars[0].upcase) && (punctuation.include? text.chars[-1].to_s)
      return true
    end
      return false
  end
end