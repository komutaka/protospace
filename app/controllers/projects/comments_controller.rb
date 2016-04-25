class Projects::CommentsController < ApplicationController
  def create
  Comment.create(comment_params)
  @project = Project.find(params[:project_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(project_id: params[:project_id], user_id: current_user.id)
  end
end
