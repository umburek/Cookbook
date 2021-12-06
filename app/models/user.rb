class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes
  belongs_to :role
  before_create :set_default_role

  private
  def set_default_role
    self.role ||= Role.fing_by_name('registered')
  end
end
