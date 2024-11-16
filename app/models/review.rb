class Review < ApplicationRecord
  belongs_to :bike

  validates :reviewer_name, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5 }
  validates :content, presence: true
end
