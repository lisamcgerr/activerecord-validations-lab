class Post < ActiveRecord::Base
    belongs_to :Author

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(fiction non-fiction),
    message: "%{value} is not a valid reponse" }

    # def valid_post
    #     if self.title.include? "Won't Believe" || "Secret" || "Top" || "Guess"
    #     end
    # end
end
