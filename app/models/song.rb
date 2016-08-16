class Song < ApplicationRecord
  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
