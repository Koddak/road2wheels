class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(:user == user)
    end
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def accept?
    true
  end

  def decline?
    true
  end
end
