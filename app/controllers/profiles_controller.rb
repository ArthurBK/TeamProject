class ProfilesController < ApplicationController
  before_action :find_profile, only: [:show, :edit, :update]

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    @profile.save
    redirect_to profile_path(@profile)
  end

  def show
    if @profile.nil?
      redirect_to new_profile_path
    end
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  private

  def find_profile
    @profile = Profile.find_by_user_id(current_user)
  end

  def profile_params
    params.require(:profile).permit(:name, :address, :phone_number, :photo, :photo_cache)
  end
end
