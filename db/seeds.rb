require 'random_data'

50.times do
    Post.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
    )
end

post = Post.find_or_create_by!(
    title: "This is a unique post-title abcdefg",
    body: "This is a unique post-body abcdefghijk"
)


Comment.find_or_create_by!(
        post_id: post.id,
        body: "This is a unique comment-body for this post xyz"
)

posts = Post.all

100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

    