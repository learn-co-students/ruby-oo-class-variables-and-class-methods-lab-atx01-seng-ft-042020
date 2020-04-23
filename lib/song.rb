class Song

    attr_accessor :name, :arist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist
    @@genres << genre
    end

    def artist
        @artist
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genre_count = @@genres.uniq.map { |x| [x, @@genres.count(x)] }.to_h
    end

    def self.artist_count
        @@artist_count = @@artists.uniq.map { |x| [x, @@artists.count(x)] }.to_h
    end
end