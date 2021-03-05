class Genre
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|g| g.genre}
    end

    def artists
        songs.map {|s| s.artist}
    end

end

