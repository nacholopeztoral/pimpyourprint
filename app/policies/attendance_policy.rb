class AttendancePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

    def index?
      false
    end

    def show?
      false
    end

    def create?
      true
    end

    def update?
      false
    end

    def activation?
      false
    end
end
