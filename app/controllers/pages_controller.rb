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
    raise
  end
  # # def create
  # #   @profile = Profile.new(params[:profile])
  # #   @profile.user = current_user
  # #   @profile.save
  # #   redirect_to new_profile_path
  # # end


  # def test
  #   @profile = Profile.new[:name]
  #   raise
  # end
end
