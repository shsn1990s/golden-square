require 'diary'
require 'secret_diary'

RSpec.describe "Integration Tests" do
  it "creates a diary instance and adds to secret diary" do
    diary = Diary.new("Contents")
    secretdiary = SecretDiary.new(diary)
    secretdiary.unlock
    expect(secretdiary.read).to eq "Contents"
  end
  it "returns an error when attempting to read locked diary" do
    diary = Diary.new("Contents")
    secretdiary = SecretDiary.new(diary)
    expect { secretdiary.read }.to raise_error("Go away!")
  end
  it "unlocks diary, then locks diary - returns error when running read" do
    diary = Diary.new("Contents")
    secretdiary = SecretDiary.new(diary)
    secretdiary.unlock
    secretdiary.lock
    expect { secretdiary.read }.to raise_error("Go away!")
  end
end