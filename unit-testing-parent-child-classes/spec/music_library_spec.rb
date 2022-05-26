require 'music_library'

RSpec.describe MusicLibrary do
  it "Initializes class" do
    musiclibrary = MusicLibrary.new
    expect(musiclibrary.all).to eq []
  end
  it "creates instance of track using mock class/double and returns a single entry" do
    musiclibrary = MusicLibrary.new
    track = double :track
    musiclibrary.add(track)
    expect(musiclibrary.all).to eq [track]
  end
  it "creates two instance of track using mock class/double and the second instance due to matched keyword" do
    musiclibrary = MusicLibrary.new
    track1 = double :track, matches?: false
    track2 = double :track, matches?: true
    musiclibrary.add(track1)
    musiclibrary.add(track2)
    expect(musiclibrary.search("song2")).to eq [track2]
  end
end


