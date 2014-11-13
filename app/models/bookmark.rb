class Bookmark < ActiveRecord::Base
  attr_accessible :article_id, :user_id, :is_bookmarked, :is_favourited, :article, :user

  belongs_to :user
  belongs_to :article

  def self.bookmark_title(bookmarks)
    bookmarks_result = bookmarks.map do |x|
      Article.find(x.id).title
    end  
  end

# def bookmark_show_title(bookmark)

#   @bookmark_show_title = bookmark.map do |x|
#     Article.find(x).title
#   end
  
# end

end
