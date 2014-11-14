# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
Feed.destroy_all

c1 = Category.create!(title: "News", description: "The latest news from all around the world", picture: "news.jpg")
c2 = Category.create!(title: "Sport", description: "Sport articles", picture: "sport.jpg")
c3 = Category.create!(title: "Tech", description: "Up to date tech news", picture: "tech.jpg")
c4 = Category.create!(title: "Politics", description: "Current politics from around the world", picture: "politics.jpg")
c5 = Category.create!(title: "Entertainment", description: "Latest entertainment news", picture: "entertainment.jpg")
c6 = Category.create!(title: "Fashion", description: "Latest fashion news", picture: "fashion.jpg")
c7 = Category.create!(title: "Science", description: "Latest Science news", picture: "science.jpg")
c8 = Category.create!(title: "Health", description: "Latest fashion news", picture: "health.jpg")
c8 = Category.create!(title: "Business", description: "Latest fashion news", picture: "business.jpg")


f1 = Feed.create!(url:"http://feeds.bbci.co.uk/news/world/rss.xml",title:"BBC", category_id: c1.id)
f2 = Feed.create!(url:"http://www.telegraph.co.uk/news/uknews/rss",title:"The Telegraph", category_id: c1.id)
f3 = Feed.create!(url:"http://www.theguardian.com/world/rss",title:"The Guardian", category_id:c1.id)
f4 = Feed.create!(url:"http://feeds.feedburner.com/fubiz",title:"Fubiz",category_id:c5.id)
f5 = Feed.create!(url:"http://www.instyle.co.uk/fashion/news.rss",title:"Fashion",category_id:c6.id)
f6 = Feed.create!(url:"http://www.skysports.com/rss/0,20514,11095,00.xml",title:"Sky Sports",category_id:c2.id)
f7 = Feed.create!(url:"http://news.nationalgeographic.com/index.rss",title:"National Geographic",category_id:c7.id)
f8 = Feed.create!(url:"http://rss.feedsportal.com/c/266/f/3803/index.rss",title:"The Independent",category_id:c6.id)
f9 = Feed.create!(url:"http://www.npr.org/rss/rss.php?id=1001",title:"NPR",category_id:c1.id)
f10 = Feed.create!(url:"http://feeds.gawker.com/lifehacker/full.xml",title:"Lifehacker",category_id:c3.id)
f11 = Feed.create!(url:"http://www.fashiontv.com/rss/designers",title:"Fashion TV",category_id:c6.id)
f12 = Feed.create!(url:"http://www.theguardian.com/uk/sport/rss",title:"The Guardian",category_id:c2.id)
f13 = Feed.create!(url:"http://sports.yahoo.com/soccer//rss.xml",title:"Yahoo Sports",category_id:c2.id)
f14 = Feed.create!(url:"http://www.telegraph.co.uk/news/politics/rss",title:"Telegraph",category_id:c4.id)
f15 = Feed.create!(url:"http://www.economist.com/sections/leaders/rss",title:"Economist",category_id:c4.id)
f16 = Feed.create!(url:"http://pan.oxfordjournals.org/rss/current.xml",title:"Oxford Journals",category_id:c4.id)
f17 = Feed.create!(url:"http://www.telegraph.co.uk/culture/music/rss",title:"Telegraph Music",category_id:c5.id)
f18 = Feed.create!(url:"http://www.telegraph.co.uk/culture/art/rss",title:"Telegraph Art",category_id:c5.id)






