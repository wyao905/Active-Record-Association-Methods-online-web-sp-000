require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
<<<<<<< HEAD
    drake = Artist.where("name = ?", "Drake").first
    if !drake
      drake = Artist.create(name: "Drake")
      drake.save
    end
=======
    drake = Artist.where("name: ?", "Drake").first
    if drake.name == nil
      drake = Artist.create(name: "Drake")
      drake.save
    end
    binding.pry
>>>>>>> 782ee8d6e303a7bda17f74b38b632d5e0690504f
    drake.songs << self
  end
end