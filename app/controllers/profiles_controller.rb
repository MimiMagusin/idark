class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  def show

  end

  def new
    @profile = Profile.new
  end
  def create

    @profile = current_user.profiles.build(profile_params)
    if @profile.save
      redirect_to root_path
    else
      render 'form'
    end
  end

  private

  def profile_params
    profile.require(:profile).permit(:first_name, :last_name, :age, :city, :address, :postal_code, :billing_info)
  end

end
