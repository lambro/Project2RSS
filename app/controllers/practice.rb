regex = "somestuff<p>some more stuff <p>"

puts regex.sub(/<.*?>/," ")