class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      flash[:notice] = "You successfully logged in using google!"
      sign_in_and_redirect @user, event: :authentication
    else
      session["devise.google_data"] = request.env["omniauth.auth"]  
      redirect_to new_user_registration_url
    end
  end
  def twitter
    @user = User.find_for_twitter(request.env["omniauth.auth"].except("extra"), current_user)

    if @user.persisted?
      flash[:notice] = "You successfully logged in using twitter!"
      sign_in_and_redirect @user, event: :authentication
    else
      session["devise.twitter_data"] = request.env["omniauth.auth"].except("extra")  
      redirect_to new_user_registration_url
    end
  end
end