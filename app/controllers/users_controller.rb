class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update]

  def index
    authorize @user
    @users = User.all
  end

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

  private

  def set_user
    @user = current_user
  end

  def itinerary_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :photo)
  end
end
