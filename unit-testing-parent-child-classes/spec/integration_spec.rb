require 'music_library'
require 'track'

RSpec.describe "Integration Test" do
  it "adds two instances of track, adds into music library and returns all instances" do
    musiclibrary = MusicLibrary.new
    track1 = Track.new("title 1", "artist a")
    track2 = Track.new("title 2", "artist b")
    musiclibrary.add(track1)
    musiclibrary.add(track2)
    expect(musiclibrary.all).to eq [track1, track2]
  end
end