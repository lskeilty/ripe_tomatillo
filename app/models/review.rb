class Review < ApplicationRecord
  belongs_to :trusted_user, class_name: "User", foreign_key: "trusted_user_id"
  belongs_to :film
  has_many :comments, as: :commentable
  has_many :ratings, as: :ratable

  validates :body, presence: true

  def review_average
    if self.ratings.any?
      sum =  0
      self.ratings.each do |rating|
        sum += rating.rating.to_i
      end
      return (sum.to_f / self.ratings.count).round(2)
    else
      return "Be the first to rate"
    end
  end
end
