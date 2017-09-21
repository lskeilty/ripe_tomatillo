class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :ratable, polymorphic: true
end
