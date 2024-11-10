require "test_helper"

class BrandTest < ActiveSupport::TestCase
  has_many :bikes
  validates :name, presence: true, uniqueness: true
  # test "the truth" do
  #   assert true
  # end
end
