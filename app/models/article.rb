class Article < ActiveRecord::Base
  attr_accessible :description, :feed_id, :picture, :title, :url

  belongs_to :feed
  has_many :bookmarks

end
