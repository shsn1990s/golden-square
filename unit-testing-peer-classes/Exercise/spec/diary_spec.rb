require 'diary'

RSpec.describe Diary do
  it "creates a single diary entry with contents" do
    diary = Diary.new("Contents")
    expect(diary.read).to eq "Contents"
  end
end