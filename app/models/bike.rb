class Bike < ApplicationRecord
  extend FriendlyId
  friendly_id :model, use: :slugged

  belongs_to :category
  belongs_to :brand, optional: true
  has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :saved_bikes, dependent: :destroy
  has_many :users, through: :saved_bikes
  include PgSearch::Model

  enum registration_status: { registered: 0, unregistered: 1 }
  has_many_attached :photos

  pg_search_scope :global_search,
  against: :model,
  associated_against: {
    category: :name,
    brand: :name
  },
  using: {
    tsearch: { prefix: true } # Allows partial matching, e.g., "mount" matches "mountain"
  }

  # validates :model, :kilometers, :body, :colour, :engine_capacity, :price, :description, :features, :maximum_speed, :fuel_type, presence: true
end
