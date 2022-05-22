Diary Entry Method Design Recipe
1. Describe the Problem
Test-drive a class with the following interface. Feel free to re-use your previous code, or re-write it if you want to practice.

(Code provided in Ruby lib file)

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

initialize(title, contents)
title - returns title
contents - returns contents
count_words - returns integer (number of words)
reading_time(wpm) - number of words user can read per minute (integer). Formula would be number of words / wpm.
reading_chunk(wpm, minutes)- Summary of method below:
  # Returns a string with a chunk of the contents that the user could read
  # in the given number of minutes.
  # If called again, `reading_chunk` should return the next chunk, skipping
  # what has already been read, until the contents is fully read.

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

title => "Title of Book"
contents => "Contents of Book"
count_words => 300
reading_time(wpm) => 5
# readimg_time would have 500 words in contents with 60 wpm value.
reading_chunk(wpm, minutes) => Sends first 500 words
reading_chunk(wpm, minutes) => Sends final 250 words

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.