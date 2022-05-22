class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @position = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm)
    count_words / wpm
  end

  def reading_chunk(wpm, minutes) 
    endposition = (wpm * minutes) + @position
    if count_words <= endposition
      return @contents.split(" ")[@position..-1].join(" ")
    end
    chunk = @contents.split(" ")[@position..endposition - 1].join(" ")
    @position = endposition
    return chunk
  end
end