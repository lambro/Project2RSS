class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  before_filter :set_bookmark_variables
  # def after_sign_in_path_for(user)
    
  # end

  # def after_sign_out_path_for(user)
    
  # end
  def set_bookmark_variables
    if current_user.present?
      @bookmarks = current_user.bookmarks
      bookmark_title = Bookmark.bookmark_title(@bookmarks)
      @bookmarks_title = @bookmarks.zip(bookmark_title)
    end
  end

  def set_subscription_variables
    if current_user.present?
      @subscriptions = current_user.subscriptions
      subscription_title = Feed.subscription_title(@subscriptions)
      @subscriptions_title = @subscriptions.zip(subscription_title)
    end
  end

  def feed_url

  
    
  end

end


