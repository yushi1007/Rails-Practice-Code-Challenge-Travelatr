class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    validates :name, uniqueness: true 
    validates :age, numericality: { greater_zero: 0 }
    validates :bio, length: {minimum: 30}  
    

    # get the sum of all the likes
    #def total_likes
    #posts.sum{|post| post.likes}
    #end
    def total_likes
        total = 0
        self.posts.each do |post|
            total += post.likes
    end
    total
    end

    #get the post that got the most likes
    # def most_liked_post
    # posts.max_by{|post| post.likes}
    # end
    def most_liked_post
    arr = self.posts.map do |post|
        post.likes
    end
    max = arr.max
    ans = Post.find_by(likes:max)
    ans.title
end
end
