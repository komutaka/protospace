class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used
  end

  def show
    @tag_name = params[:id]
    @projects = Project.includes(:user).tagged_with(@tag_name)
  end
end
