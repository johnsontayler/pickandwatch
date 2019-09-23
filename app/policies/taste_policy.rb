class TastePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def watch?
    true
  end

  def bookmark?
    true
  end

  def like?
    true
  end

  def dislike?
    true
  end

  def create?
    true
  end
end
