class Projects::RankingController < ApplicationController
  def index
    @ranking_projects = Project.includes(:user).page(params[:page]).per(8)
  end
end
