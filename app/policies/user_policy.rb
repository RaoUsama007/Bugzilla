class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    @user.has_any_role? :manger, :newuser, :devoloper, :qa
  end

  def show
  end

  def new
    @users = User.new
  end

  def edit
  end

  def create
  end

  def update
  end

  # DELETE /projects/1 or /projects/1.json
  def destroy
  end

end
