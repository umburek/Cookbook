class RecipePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(accept: true)
      end
    end
  end

  def index?
    true
  end

  def update?
    user.present? || user.admin?
  end

  def destroy?
    user.present? || user.admin?
  end

end
