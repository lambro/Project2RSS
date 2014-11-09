class Article < ActiveRecord::Base
  attr_accessible :description, :feed_id, :picture, :title, :url, :summary, :published, :article_id, :image

  belongs_to :feed
  has_many :bookmarks

  def self.update_from_feed(feed_url)  
    feed = Feedjira::Feed.fetch_and_parse(feed_url)  
    feed.entries.each do |entry|  
      unless exists? :article_id => entry.id  
        create!(  
          :title         => entry.title,  
          :summary      => entry.summary,  
          :url          => entry.url,  
          :published => entry.published,  
          :article_id         => entry.id  
        )  
      end  
    end  
  end

end

