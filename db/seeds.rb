require 'faker'

articles = []
bodies = []

50.times do |i|
  articles << Article.new(    
    title: Faker::Book.title, 
    cover_url: "https://picsum.photos/id/#{i}/800/800", 
  )
  bodies << ActionText::RichText.new(
    body: Faker::Lorem.paragraph(sentence_count: 20), 
    record_id: i+1, 
    record_type: "Article", 
    name: "body"
  )
end

p Article.import articles
p ActionText::RichText.import bodies 