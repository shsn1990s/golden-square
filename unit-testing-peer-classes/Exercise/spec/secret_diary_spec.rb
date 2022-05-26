require 'secret_diary'

RSpec.describe SecretDiary do
  it "creates an instance double of diary and adds into secretdiary" do
    diary = double :diary, read: "Contents"
    secretdiary = SecretDiary.new(diary)
    secretdiary.unlock
    expect(secretdiary.read).to eq "Contents"
  end
  it "raises an error as diary is locked" do
    diary = double :diary
    secretdiary = SecretDiary.new(diary)
    expect { secretdiary.read }.to raise_error("Go away!")
  end
end