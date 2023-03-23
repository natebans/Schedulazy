class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :destroy]

  def index
     @activities = Activities.all
  end

  def show
    authorize @activity
  end

  def destroy
    authorize @activity
    user = @activity.user
    @activity.destroy
    redirect_to root_path
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(photos: [])
  end
end
