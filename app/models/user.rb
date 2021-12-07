class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes
  before_create :set_default_role
  enum role: [:admin, :registered]

  private
  def set_default_role
    self.role = :registered
  end
end
