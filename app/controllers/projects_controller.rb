class ProjectsController < ApplicationController
  def index
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.images.build
    if @project.save
      binding.pry
      redirect_to action: :index, notice: '投稿が完了しました'
    else
      redirect_to action: :new, notice: '投稿に失敗しました'
    end
  end

  private
  def project_params
    params.require(:project).permit(:catch_copy, :title, :concept, images_attributes: [:id, :image, :status]).merge(user_id: current_user)
  end
end
