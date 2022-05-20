require 'reading_time'

RSpec.describe "calculate_reading_time method" do
  it "Eight words will be passed and reading time should be 1" do
    readingtime = ReadingTime.new
    result = readingtime.readingtime("word " * 8)
    expect(result).to eq 1
  end
  it "One thousand words will be passed through and reading time should be 5" do
    readingtime = ReadingTime.new
    result = readingtime.readingtime("word " * 1000)
    expect(result).to eq 5
  end
  it "Five hundred words will be passed through and reading time should be 3" do
    readingtime = ReadingTime.new
    result = readingtime.readingtime("word " * 500)
    expect(result).to eq 3
  end
  it "Ten thousand words will be passed through and reading time should be 50" do
    readingtime = ReadingTime.new
    result = readingtime.readingtime("word " * 10000)
    expect(result).to eq 50
  end

end