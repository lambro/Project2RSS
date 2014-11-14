class Feed < ActiveRecord::Base

  attr_accessible :category, :category_id, :url, :subscription, :title

  has_many :articles
  has_many :subscriptions
  belongs_to :category

end
