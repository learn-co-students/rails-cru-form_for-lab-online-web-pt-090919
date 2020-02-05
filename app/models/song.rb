class Song < ActiveRecord::Base
  belongs_to :genre
  belongs_to :artist

  def to_s
    self.name
  end
end
