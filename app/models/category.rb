class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :bikes, dependent: :destroy
  # validates :name, presence: true
  has_one_attached :photo
end
