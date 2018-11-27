class ChallengePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    # Only visible for admins
    user.admin
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    user.admin
  end

  def update?
    true
  end
end
