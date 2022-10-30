class Song
    @@count = 0
    attr_accessor :name, :artist, :genre
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre

        @@genres.push(@genre)
        @@artists.push(@artist)
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq!
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end