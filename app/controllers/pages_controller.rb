class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if user_signed_in?
      if current_user.profile.present?
        redirect_to dashboard_path
      else
        redirect_to new_profile_path
      end
    else
      redirect_to new_user_session_path
    end
  end

  def kinesthetic
  end

  def program
    @resources = Resource.all
  end
end
