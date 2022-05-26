Music Library Multi-Class Planned Design Recipe
1. Describe the Problem
Test-drive these classes. Include:

a. Integration tests
b. Unit tests, exercising all of the class's functionality, without using or referring to the other class.

2. Design the Class System
# File: lib/music_library.rb

class MusicLibrary
  def initialize
    # ...
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  end

  def all
    # Returns a list of track objects
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
  end
end

# File: lib/track.rb

class Track
  def initialize(title, artist) # title and artist are both strings
  end

  def matches?(keyword) # keyword is a string
    # Returns true if the keyword matches either the title or artist
  end
end

3. Create Examples as Integration Tests


# EXAMPLE

# Gets all tracks
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]


4. Create Examples as Unit Tests
# The unit tests for Music Library below will solely test using mock classes/double.

# Add a single track to the music library
musiclibrary = MusicLibrary.new
track1 = musiclibrary.add(double(:track, ))


# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
Encode each example as a test. You can add to the above list as you go.

5. Implement the Behaviour