namespace :post_comment_reply do
  desc 'post comment and reply dummy data creating...'

  task post_comment_reply_create: :environment do
    p = 1
    num = 5

    until p > num  do
      p += 1

      title = Faker::Lorem.sentence
      description = Faker::Lorem.paragraphs
      post = Post.create!(title: title, description: description)

      c = 1
      c_num = 5
      until c > c_num do
        c += 1

        body = Faker::Lorem.sentences
        comment = post.comments.create!(body: body)

        r = 1
        r_num = 5
        until r > r_num do
          r += 1

          body = Faker::Lorem.sentences
          comment.replies.create!(body: body)
        end
      end
    end
  end

  desc 'dummy data create end.'
end