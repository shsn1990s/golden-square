require 'diary_entry'

RSpec. describe DiaryEntry do
  it "Returns the title of the book" do
    diary = DiaryEntry.new("Title of Book", "Contents of Book")
    expect(diary.title).to eq "Title of Book"
    expect(diary.contents).to eq "Contents of Book"
  end
  it "Returns 300, based on the number of words in contents" do
    diary = DiaryEntry.new("Title of Book", "Words " * 300)
    expect(diary.count_words).to eq 300
  end
  it "Returns 5 to represent reading minutes for 300 words with 60 as wpm value" do
    diary = DiaryEntry.new("Title of Book", "Words " * 300)
    expect(diary.reading_time(60)).to eq 5
  end
  it "Returns all 500 words, which is the entire contents of the string" do
    diary = DiaryEntry.new("Title of Book", "words " * 500)
    expect(diary.reading_chunk(50, 10)).to eq ("words " * 500).split.join(" ")
  end
  it "Returns the first 500 words, then the final 250 words" do
    diary = DiaryEntry.new("Title of Book", "words " * 750)
    expect(diary.reading_chunk(50, 10)).to eq ("words " * 500).split.join(" ")
    expect(diary.reading_chunk(50, 10)).to eq ("words " * 250).split.join(" ")
  end
  it "Returns 300 on first 3 attempts and then final one hundred words" do
    diary = DiaryEntry.new("Title of Book", "words " * 700)
    expect(diary.reading_chunk(60, 5)).to eq ("words " * 300).split.join(" ")
    expect(diary.reading_chunk(60, 5)).to eq ("words " * 300).split.join(" ")
    expect(diary.reading_chunk(60, 5)).to eq ("words " * 100).split.join(" ")
  end
end