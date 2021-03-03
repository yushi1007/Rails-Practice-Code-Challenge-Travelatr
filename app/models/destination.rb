class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def most_recent_posts
        #byebug
        posts.last(5)
    end

    def most_liked
        posts.max_by{|post| post.likes}
    end

    def average_blogger_age
        # byebug
        total_age = bloggers.uniq.sum{|blogger| blogger.age}
        total_age.to_f / bloggers.uniq.length
    end
end
