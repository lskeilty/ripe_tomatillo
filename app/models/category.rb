class Category < ApplicationRecord
  has_many :films
  has_many :film_reviews, through: :films, source: :reviews

  def last_five_reviews
   self.film_reviews.sort_by {|review| review.created_at }.reverse.take(3)
  end
end
