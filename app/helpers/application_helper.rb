module ApplicationHelper
  def like_user
    current_user.likes
  end
end
