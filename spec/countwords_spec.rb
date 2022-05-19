require 'countwords'

RSpec.describe CountWords do
  it "Returns the number 5 when five words are passed as arguments" do
    words = CountWords.new
    result = words.count_words("one two three four five")
    expect(result).to eq 5
  end
end