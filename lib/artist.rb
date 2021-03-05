class Artist
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|s| s.artist == self}
    end

    def genres
        Song.all.map {|g| g.genre}
    end
end
