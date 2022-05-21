def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    # if statement prevents blank spaces from being added to hash
    counter[char] += 1 if char != " "
  end
  # The statement below has been changed to display from descending order
  # As conducting a p statement to view the counter showed that it was 
  # displaying values lowest to highest. (v changed to -v)
  counter.to_a.sort_by { |k, v| -v }[0][0]
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")