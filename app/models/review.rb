class Review < ApplicationRecord
  belongs_to :trusted_user, class_name: "User", foreign_key: "trusted_user_id"
  belongs_to :film
  has_many :comments, as: :commentable
  has_many :ratings, as: :ratable
end
