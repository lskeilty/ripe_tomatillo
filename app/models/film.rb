class Film < ApplicationRecord
  belongs_to :category
  has_many :reviews
  has_many :ratings, as: :ratable
  has_many :comments, as: :commentable

  def rating_average
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
