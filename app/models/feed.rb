class Feed < ActiveRecord::Base
  attr_accessible :category, :category_id, :url

  has_many :articles
  has_many :subscriptions
  belongs_to :category

end
