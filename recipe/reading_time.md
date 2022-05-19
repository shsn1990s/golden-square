Estimated Reading Time - Method Design Recipe
1. Describe the Problem
> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 > > words a minute.

2. Design the Method Signature
_Include the name of the method, its parameters, return value, and side effects._

# 'reading_time' estimates the reading time for a list of words

'''ruby
reading_time(text)
esimated_reading_time = number of words / wpm
returns time
'''
# * The method will take one string parameter
# * It will return an integer representing the number of minutes it would take to complete
# * Side effects - the reading time value is likely to contain a decimal point, would
# * need to consider using an upper/cieling value to round the number up.

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# 1
reading_time("one two three four five six seven eight") 
# => 1
# 2
reading_time(1000 words will be individually entered)
# => 5
# 3
reading_time(500 words will be individually entered)
# => 3
# 4
reading_time(10,000 words will be individually entered)
# => 50

4. Implement the Behaviour
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._