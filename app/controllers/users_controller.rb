class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit]

  def show
  end

  def edit
  end

  def update
    current_user.update(update_params)
    redirect_to action: :show
  end

  private
  def update_params
    params.require(:user).permit(:nickname, :member, :work, :profile, :avatar, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
