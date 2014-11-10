class Article < ActiveRecord::Base
  attr_accessible :description, :feed_id, :picture, :title, :url, :summary, :published, :entry_id, :image

  belongs_to :feed
  has_many :bookmarks

  def self.update_from_feed(feed_url, id)  
      feed = Feedjira::Feed.fetch_and_parse(feed_url)
      @feed_id = id  
      feed.entries.each do |entry|  
        unless exists? :entry_id => entry.id  
          create!(  
            :title         => entry.title,  
            :summary      => entry.summary,  
            :url          => entry.url,  
            :published => entry.published,  
            :entry_id         => entry.id,
            :feed_id => @feed_id
          )  
        end  
      end  
    end

end

