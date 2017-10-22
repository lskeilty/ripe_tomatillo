class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :ratable, polymorphic: true
  validates :rating, presence: true
  validates_uniqueness_of :user, scope: [:ratable_id, :ratable_type]
end
