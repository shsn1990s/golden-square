require 'make_snippet'

RSpec.describe MakeSnippet do
  it "Returns the first five words and then ..." do
    text = MakeSnippet.new
    result = text.make_snippet("one two three four five six")
    expect(result).to eq "one two three four five..."
  end
  it "Returns all five words without ..." do
    text = MakeSnippet.new
    result = text.make_snippet("one two three four five")
    expect(result).to eq "one two three four five"
  end
end