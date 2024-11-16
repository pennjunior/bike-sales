class Category < ApplicationRecord
  has_many :bikes
  # validates :name, presence: true
  has_one_attached :photo
end
