class Recipe < ApplicationRecord
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :user, optional: true

  accepts_nested_attributes_for :recipe_ingredients, reject_if: proc {
    |attr| attr['ingredient_id'].blank? || attr['quantity'].blank? || attr['unit'].blank?
  }

  scope :to_accept, -> { where(user_id: nil, accept: false) }
end
