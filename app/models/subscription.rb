class Subscription < ActiveRecord::Base
  attr_accessible :feed_id, :user_id

  belongs_to :users
  belongs_to :feeds

end
