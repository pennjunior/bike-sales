class Category < ApplicationRecord
  has_many :bikes
  validates :name, presence: true
end
