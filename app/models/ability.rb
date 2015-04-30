class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    else
      can :read, Ticket
      can :read, Comment
      can :create, Ticket
      can :create, Comment
    end
  end
end
