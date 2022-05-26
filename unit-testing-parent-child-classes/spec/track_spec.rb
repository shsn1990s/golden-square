require 'track'

RSpec.describe Track do
  it "creates two instances of the track class and returns true" do
    track1 = Track.new("Title 1 - Song", "Artist 1")
    track2 = Track.new("Title 2 - Song", "Artist 2")
    expect(track1.matches?("Title 1")).to eq true
  end
  it "creates two instances of the track class and returns true" do
    track1 = Track.new("Title 1 - Song", "Artist 1")
    track2 = Track.new("Title 2 - Song", "Artist 2")
    expect(track2.matches?("Artist 2")).to eq true
  end
  it "creates two instances of the track class and returns false" do
    track1 = Track.new("Title 1 - Song", "Artist 1")
    track2 = Track.new("Title 2 - Song", "Artist 2")
    expect(track1.matches?("Title A")).to eq false
  end
end