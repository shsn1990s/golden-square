def get_most_common_letter(text)
  p text
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
    #p counter
  end
  counter.to_a.sort_by { |k, v| 
    # p k
    # p v
    
    
    v }[0][0]
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")