class UserChallengePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    # Only user of the User_challenge can generate it
    record.user == user
  end

  def index
    true
  end

  def show
    true
  end

end
