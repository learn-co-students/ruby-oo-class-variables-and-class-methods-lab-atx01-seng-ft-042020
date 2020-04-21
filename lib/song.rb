class Song 
    @@count = 0
    @@all = []
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre

        @@count += 1
        @@artists << artist
        @@genres << genre
        @@all << {:name => name, :artist => artist, :genre => genre}
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
        res = {}
        @@genres.each {|e| 
            res[e] = @@all.uniq.count {|v|  v[:genre] == e}
        }
        res
    end

    def self.artist_count 
        res = {}
        @@artists.each {|e| 
            res[e] = @@all.uniq.count {|v|  v[:artist] == e}
        }
        res
    end


end