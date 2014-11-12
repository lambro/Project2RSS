namespace :rss do
  desc "updating feed at set intervals"
  task :update_feeds => :environment do
    Feed.all.each { |a| Article.update_from_feed(a.url, a.id)}
  end
end