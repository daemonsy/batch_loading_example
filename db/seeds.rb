BlogPost.delete_all
Author.delete_all
Blog.delete_all

roci_files = Blog.create!(name: "The Rocinante files", slug: 'roci')

roci_authors = [
  Author.create!(name: "James Holden", email: "james.holden@un.org"),
  Author.create!(name: "Naomi Nagata", email: "naomi.nagata@un.org"),
  Author.create!(name: "Alex Kamal", email: "alex.kamal@un.org"),
  Author.create!(name: "Bobbie Draper", email: "roberta.draper@mcrn.org"),
]

25.times {
  BlogPost.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph(sentence_count: (5..15).to_a.sample),
    author: roci_authors.sample,
    blog: roci_files
  )
}

free_navy_blog = Blog.create!(name: "The Free Navy Gazette", slug: 'beltalowda')

free_navy_authors = [
  Author.create!(name: "Marcos Inaro", email: "macros@hotmail.com"),
  Author.create!(name: "Philip Inaro", email: "philip@hotmail.com")
]

30.times {
  BlogPost.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph(sentence_count: (5..15).to_a.sample),
    author: free_navy_authors.sample,
    blog: free_navy_blog
  )
}
