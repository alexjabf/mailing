class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new#(role: 3)
    if user.admin?
      can :manage, :all
      #can :update, Movie
    else
      can :read, :all
      #can [:new, :create], [Book, Movie]
      can [:edit, :update], Movie, id: [980190962, 298486374]
      #can :read, :all
    end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
  def filter_admin!
    authenticate_user!
    redirect_to root_path, alert: "NO TIENNES ACCESSO" unless current_user.admin?
  end
end
