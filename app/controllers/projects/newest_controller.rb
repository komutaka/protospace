class Projects::NewestController < ApplicationController
  def index
    @projects = Project.includes(:user).page(params[:page]).per(8).order("created_at DESC")
  end
end
