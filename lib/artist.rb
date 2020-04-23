require_relative "song.rb"
require "pry"

class Artist
attr_accessor :name, :song

@@all = []

    def initialize(name)
        @name = name
        @song = song
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song)
        songA = Song.new(song)
        songA.artist = self
    end

    def self.song_count
        Song.all.count
    end



end