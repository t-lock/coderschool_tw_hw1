class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :price, presence: true

  def image_url_or_default
    image_url.presence || "http://loremflickr.com/320/240/#{name.split.first}"
  end
end
