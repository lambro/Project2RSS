class Category < ActiveRecord::Base
  attr_accessible :description, :picture, :title, :feed

  has_many :feeds

end
