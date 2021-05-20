class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select do | song |
            self == song.artist
        end
    end

    def add_song(song)
    end
end