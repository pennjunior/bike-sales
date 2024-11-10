class Bike < ApplicationRecord
  belongs_to :category
  belongs_to :brand

  enum registration_status: [:registered, :unregistered]
  has_many_attached :photos

  # validates :model, :kilometers, :body, :colour, :engine_capacity, :price,
  #   :last_modified, :registration_status, :description, :features, :stock, :maximum_speed, :fuel_type, presence: true
end
