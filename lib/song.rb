class Song  
    
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@count += 1
        @@genres << self.genre
        @@artists << self.artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        new_hash = {}

        @@genres.map do |genre|
            if new_hash.keys.include?(genre)
                new_hash[genre] += 1
            else
                new_hash[genre] = 1
            end
        end
        new_hash
    end

    def self.artist_count
        artist_hash = {}

        @@artists.map do |instance|
            if artist_hash.keys.include?(instance)
                artist_hash[instance] += 1
            else
                artist_hash[instance] = 1
            end
        end
        artist_hash
    end

end








#     def Song.genre_count
#         new_hash = {}
#         @@genres.map do |genre|
#             if new_hash[genre]
#                 new_hash[genre] +=1
#             else 
#                 new_hash[genre] = 1
#             end
#         end
#         new_hash
#     end

#     def Song.artist_count
#         song_hash = {}
#         @@artists.map do |artist|
#             if song_hash[artist]
#                 song_hash[artist] +=1
#             else 
#                 song_hash[artist] = 1
#             end
#         end
#         song_hash
#     end


