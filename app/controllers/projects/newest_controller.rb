class Projects::NewestController < ApplicationController
  def index
    @projects = Project.includes(:user).page(params[:page]).per(8).order("id: :desc")
  end
end
