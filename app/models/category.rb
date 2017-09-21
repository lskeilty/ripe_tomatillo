class Category < ApplicationRecord
  has_many :films
  has_many :film_reviews, through: :films, source: :reviews

end
