class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @project.images.build
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private
  def project_params
    params.require(:project).permit(:catch_copy, :title, :concept, images_attributes: [:id, :image, :status]).merge(user_id: current_user.id)
  end
end
