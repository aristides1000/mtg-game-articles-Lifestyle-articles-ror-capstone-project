module ApplicationHelper
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def current_user_id?
    !!current_user
  end
end
