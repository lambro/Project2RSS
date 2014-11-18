class Subscription < ActiveRecord::Base
  attr_accessible :feed_id, :user_id, :feed
  belongs_to :users
  belongs_to :feeds

  def self.subscription_title(subscriptions)
    subscriptions_result = subscriptions.map do |x|
      Feed.find(x.feed_id).title
    end  
  end
end
