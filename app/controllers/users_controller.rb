class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update]

  def show
    authorize @user
  end

  def update
    authorize @user

    if @user.update!(user_params)
      redirect_to user_path(@user)
    else
      render 'devise/registrations/edit', status: :unprocessable_entity
    end
  end

  def home
    @user = current_user
  end

  private

  def set_user
    @user = current_user
  end

  def itinerary_params
    params.require(:user).permit(:email, :first_name, :last_name, :encrypted_password, :photo)
  end
end
