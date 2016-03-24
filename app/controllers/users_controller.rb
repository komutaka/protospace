class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  private
  def update_params
    params.require(:user)
  end
end
