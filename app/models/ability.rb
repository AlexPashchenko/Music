class Ability
  include CanCan::Ability

  def initialize(user)

      user ||= User.new # guest user (not logged in)
      if user.role.admin?
        can :manage, :all
      elsif user.role.user?
        can :read, only: [Post, Track, Category, Comment,Genre]
        can :create, only: [ Post, Track, Comment]
        can [:update,:destroy], only: [Post, Comment]
      else
        can :read, only: [Post, Comment, Track]
      end
  end
end
