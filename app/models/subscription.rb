class Subscription < ActiveRecord::Base
  attr_accessible :feed_id, :user_id

  belongs_to :users
  belongs_to :feeds

  def self.subscription_title(subscriptions)
    subscriptions_result = subscriptions.map do |x|
      Feed.find(x.id).title
    end  
  end

end
