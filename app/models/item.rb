class Item < ActiveRecord::Base
  attr_accessible :category, :description, :id, :poster, :poster_url, :price, :title

  def poster
    "http://ia.media-imdb.com/images/M/#{poster_url}"
  end

  def imdb
    "http://www.imdb.com/title/#{id}/"
  end

end
