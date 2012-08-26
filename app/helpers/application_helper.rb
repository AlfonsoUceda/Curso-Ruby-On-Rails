module ApplicationHelper
  def alert
    if flash[:alert]
      "<p>#{flash[:alert]}</p>".html_safe
    end
  end

  def notice
    if flash[:notice]
      "<p>#{flash[:notice]}</p>".html_safe
    end
  end

  def welcome_user
    if logged_in?
      "<div class=\"welcome_user\"><p>Hola #{current_user.firstname} - #{link_to "Logout", logout_path}</p><div>".html_safe
    end
  end
end
