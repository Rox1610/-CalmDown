class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    raise
    @profile = Profile.new(params[:profile])
    raise
    if @profile.save
      redirect_to home_path
    end

  end
  # @profile.user = current_user pour transférer l'instance à user? ou current user

  # def create méthode dans pages_controller?
  #   @profile = Profile.new(params[:profile])
  #   @profile.user = current_user
  #   @profile.save
  #   redirect_to new_profile_path
  # end
end
