class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
