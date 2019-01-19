class DreamPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def show?
    if record.private == true
      user_is_owner_or_admin?
    else
      return true
    end
  end

  def create?
    return true
  end

  def update?
    record.user == user
  end

  def destroy?
    user_is_owner_or_admin?
  end

  def user_is_owner_or_admin?
    record.user == user || user.admin
  end
end
