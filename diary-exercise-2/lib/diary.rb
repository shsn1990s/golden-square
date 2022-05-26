class Diary
  def initialize
    @diary = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
    @diary << entry
  end

  def all
    return @diary
  end

  def count_words
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
    count = 0
    @diary.each do |entry|
      count += entry.count_words
    end
    return count
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
    count = 0
    @diary.each do  |entry|
      count += entry.reading_time(wpm)
    end
    return count
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
    readable_entries = @diary.filter do |entry|
      entry.reading_time(wpm) <=minutes
    end
    sorted_by_longest = readable_entries.sort_by do |entry|
      entry.count_words
  end
  sorted_by_longest.last

  end
end