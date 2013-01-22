module TalkiesHelper

  def user_email(user)
    if user.email
      user.email
    else
      "No email"
    end
  end

end
