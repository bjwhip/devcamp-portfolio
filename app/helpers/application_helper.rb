module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to "Sign Up", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path)
    else
      link_to "Logout", destroy_user_session_path, method: :delete
    end
  end

  # def source_helper
  #   if session[:source]
  #     greeting = "I like your photos from #{session[:source] current_user.first_name if current_user}"
  #     content_tag(:p, greeting, class= "source-greeting")
  #   end
  # end

  def source_helper
    if session[:source]
      greeting = "I like your photos from #{session[:source]}"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    SockViewTool::Renderer.copyright 'Ben Whipple', 'All rights reserved'
  end
end
