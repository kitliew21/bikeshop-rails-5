class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :read, Product
    can :manage, User, id: user.id

    if user.email == "kitliew21@gmail.com"
      can :manage, [Product, User]
  	end
  end
end