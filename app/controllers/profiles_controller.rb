class ProfilesController < ApplicationController
  # def new
  #   @profile = Profile.new
  # end

  def create
    current_user.profile = Profile.find_by(name: :auditif)
    if current_user.save
      redirect_to home_path
    else
      redirect_to profile_new
    end
  end
end
