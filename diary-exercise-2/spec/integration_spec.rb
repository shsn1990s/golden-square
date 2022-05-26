require 'diary'
require 'diary_entry'

RSpec.describe "Diary Integration" do
  it "Initialises an empty diary array" do
    diary = Diary.new
    expect(diary.all).to eq []
  end
  it "Adds a diary entry into the array" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("Title", "Contents")
    diary.add(diary_entry)
    expect(diary.all).to eq [diary_entry]
  end
  it "Counts the number of words in the contents from one entry" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("Title", "Words " * 500)
    diary.add(diary_entry)
    expect(diary.count_words).to eq 500
  end
  it "Counts the number of words in the contents from two entries" do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Title", "Words " * 500)
    diary_entry2 = DiaryEntry.new("Title", "Words " * 1000)
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.count_words).to eq 1500
  end
  it "Returns the reading time for all entries" do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Title", "Words " * 600)
    diary_entry2 = DiaryEntry.new("Title", "Words " * 300)
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    wpm = 60
    expect(diary.reading_time(wpm)).to eq 15
  end
  it "Returns the best entry for reading based on time" do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Title", "Words " * 600)
    diary_entry2 = DiaryEntry.new("Title", "Words " * 300)
    diary_entry3 = DiaryEntry.new("Title", "Words " * 900)
    diary_entry4 = DiaryEntry.new("Title", "Words " * 550)
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    diary.add(diary_entry3)
    diary.add(diary_entry4)
    wpm = 60
    minutes = 9
    expect(diary.find_best_entry_for_reading_time(wpm, minutes)).to eq diary_entry2
  end
end