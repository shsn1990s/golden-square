class ReadingTime

  def readingtime(text)
    wpm = 200
    array = text.split(" ")
    readingtime = (array.length.to_f / wpm).ceil
    return readingtime
  end
end