require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  has_many :bikes
  validates :name, presence: true
  # test "the truth" do
  #   assert true
  # end
end
