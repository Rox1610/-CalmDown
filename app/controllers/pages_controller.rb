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

  def landing
  end

  def program
    timezone_offset = -18_000
    @event = current_user.events.where('start_time >= ?', (Time.current + timezone_offset)).order("start_time ASC").first
  end
end
