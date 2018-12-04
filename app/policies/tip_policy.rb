class TipPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def index?
    true
  end

  def create?
    record.challenge.taken_by?(user) || user.admin
  end

  def new?
    create?
  end
end
