class MusicLibrary
  def initialize
    @musiclibrary = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
    @musiclibrary.push(track)
  end

  def all
    # Returns a list of track objects
    return @musiclibrary
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
    list = []
    @musiclibrary.each do |track|
      if track.matches?(keyword)
        list.push(track)
      end
    end
    return list
  end
end