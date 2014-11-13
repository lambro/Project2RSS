class Bookmark < ActiveRecord::Base
  attr_accessible :article_id, :user_id, :is_bookmarked, :is_favourited

  belongs_to :user
  belongs_to :article

  def self.bookmark_title(bookmarks)
    bookmarks_result = bookmarks.map do |x|
      Article.find(x.id).title
    end  
  end

end
