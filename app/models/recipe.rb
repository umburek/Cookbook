class Recipe < ApplicationRecord
  has_many :ingredients
  has_many_attached :photos
  belongs_to :user
end
