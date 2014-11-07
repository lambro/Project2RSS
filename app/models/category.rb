class Category < ActiveRecord::Base
  attr_accessible :description, :picture, :title

  has_many :feeds

end
