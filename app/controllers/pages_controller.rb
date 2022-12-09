class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if user_signed_in?
      if current_user.profile.present?
        dashboard
      else
        redirect_to new_profile_path
      end
    else
      redirect_to new_user_session_path
    end
  end

  def dashboard
    redirect_to home_path
  end

  def kinesthetic
  end

  def landing
  end
end
