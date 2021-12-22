class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes
  before_create :set_default_role
  enum role: [:admin, :registered]

  # accepts_nested_attributes_for :user, nil: proc {
  #   |attr| attr[]
  # }

  private
  def set_default_role
    self.role = :registered
  end
end
