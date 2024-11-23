class Bike < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy
  include PgSearch::Model

  enum registration_status: [:registered, :unregistered]
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

  # validates :model, :kilometers, :body, :colour, :engine_capacity, :price,
  #   :last_modified, :registration_status, :description, :features, :stock, :maximum_speed, :fuel_type, presence: true
end
