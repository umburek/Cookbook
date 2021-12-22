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

  def update?
    user.admin? or not record.accept?
  end
end
