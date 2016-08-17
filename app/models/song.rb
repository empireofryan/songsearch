class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre

  # def self.search(search)
  #   where("name LIKE ?", "%#{search}%")
  # end

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
