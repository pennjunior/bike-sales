class SavedBike < ApplicationRecord
  belongs_to :bike
  belongs_to :user

  validates :bike_id, uniqueness: { scope: :user_id, message: "Has Already Been Saved" }
end
