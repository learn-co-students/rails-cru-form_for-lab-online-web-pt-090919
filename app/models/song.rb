class Song < ApplicationRecord
  belongs to :artist
  belongs to :genre
end
