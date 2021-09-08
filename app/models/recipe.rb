class Recipe < ApplicationRecord
  has_many :ingredients
  has_many_attached :photos
end
