class Ability
  include CanCan::Ability
 
  def initialize(user)
    if user.role == "admin"
      can :read, :all
      can :create, :all
      can [:update, :edit] , Survey, :user_id => user.id
      can :destroy, :all
    elsif user.role == "user"
      can :read, Survey, :user_id => user.id
      can :create, :all
      can [:update, :edit] , Survey, :user_id => user.id
     end
  end

end