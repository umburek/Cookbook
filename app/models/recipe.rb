class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :user, optional: true
  before_create :set_default_acceptation
  before_create :set_default_multiplier
  accepts_nested_attributes_for :recipe_ingredients
  accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank? }

  private
  def set_default_multiplier
    self.multiplier = 1
  end
  def set_default_acceptation
    if user.present? && user.registered?
      self.accept = true
    elsif user.present? && user.admin?
      self.accept = true
    else
      self.accept = false
    end
  end
end
