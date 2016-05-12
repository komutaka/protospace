class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used
  end

  def show
    @projects = Project.includes(:user).tagged_with(params[:id])
  end
end
