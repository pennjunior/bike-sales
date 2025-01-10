class Brand < ApplicationRecord
  has_many :bikes, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
