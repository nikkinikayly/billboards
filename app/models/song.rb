class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :billboard, optional: true
end

# name, genre, album