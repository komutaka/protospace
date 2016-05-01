class Projects::LikesController < ApplicationController
  before_action :set_project, only: [:create, :destroy]
  before_action :find_likes, only: [:create, :destroy]

  def create
    @like = current_user.likes.create(project_id: params[:project_id])
  end

  def destroy
    @like = current_user.likes.find_by(project_id: params[:project_id])
    @like.destroy
  end

  private
  def set_project
    @project = Project.find(params[:project_id])
  end

  def find_likes
    @likes = Like.where(project_id: params[:project_id])
  end
end
