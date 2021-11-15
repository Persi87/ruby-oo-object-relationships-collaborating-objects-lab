require 'pry'

class Artist 

    attr_accessor :name

    @@all = []

        def initialize(name)
            @name = name
            @@all << self
        end

        def self.all
            @@all
        end

        def songs
            Song.all.select {|songs| songs.artist == self}
        end

        def add_song(song)
            song.artist = self
        end

        def self.find_or_create_by_name(name)
            #binding.pry
            if self.all.find {|artist| artist.name == name} 
                self.all.find {|artist| artist.name == name}
            else
                self.new(name)
            end
        end

        def print_songs
            # Song.all.select {|songs| songs.artist == self}
            songs.each do |songs|   # use the songs methods which already returns an array of song instances of chosen artist, and print the instances name
                puts songs.name     # or write out the iteration to get the array like above
            end
        end
end