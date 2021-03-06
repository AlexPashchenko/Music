class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)
    if user.role.admin?
      can :manage, :all
    elsif user.role.user?
      can :read,  [Post, Track, Comment,Genre]
      can  :destroy, [Post, Comment], user_id: user.id
      can :update, [Post, Comment], user_id: user.id
      can :create, [Post, Comment], user_id: user.id
    else
      can :read, [Post, Comment, Track, Genre]
    end
  end
end
