class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def show
    @comment = Comment.new(project_id: @project)
    @like = Like.find_by(user_id: current_user.id, project_id: @project)
  end

  def new
    @project = Project.new
    @project.images.build
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to root_path, notice: 'プロトタイプを更新しました'
    else
      render :edit
    end
  end

  def destroy
    if @project.user_id == current_user.id
      @project.destroy
      redirect_to root_path, notice: 'プロトタイプを削除しました'
    end
  end

  private
  def project_params
    params.require(:project).permit(:catch_copy, :title, :concept, images_attributes: [:id, :image, :status]).merge(user_id: current_user.id)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
