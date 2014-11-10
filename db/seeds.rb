# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Category.create!(title: "News")
c2 = Category.create!(title: "Sport")
c3 = Category.create!(title: "Tech")
c4 = Category.create!(title: "Geography")
c5 = Category.create!(title: "Design")


f1 = Feed.create!(url:"http://feeds.bbci.co.uk/news/world/rss.xml",title:"BBC", category_id: c1.id)
f3 = Feed.create!(url:"http://www.theguardian.com/world/rss",title:"The Guardian", category_id:c1.id)
f4 = Feed.create!(url:"http://feeds.feedburner.com/fubiz",title:"Fubiz",category_id:c5.id)
f6 = Feed.create!(url:"http://www.skysports.com/rss/0,20514,11095,00.xml",title:"Sky Sports",category_id:c2.id)
f7 = Feed.create!(url:"http://news.nationalgeographic.com/index.rss",title:"National Geographic",category_id:c4.id)
f9 = Feed.create!(url:"http://www.npr.org/rss/rss.php?id=1001",title:"NPR",category_id:c1.id)
f10 = Feed.create!(url:"http://feeds.gawker.com/lifehacker/full.xml",title:"Lifehacker",category_id:c3.id)