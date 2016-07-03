class UsersController < ApplicationController
  delegate :can?, :cannot?, :to => :ability
  load_and_authorize_resource
  before_action :set_user, only:[:show]


  def show
  end

  def create
  end

  def set_user
    @user = User.find(params[:id])
  end

  private
  def user_params
  params.require(:user).permit(:nickname, :email, :password, :password_confirmation)
  end
end