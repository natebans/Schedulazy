class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :destroy]

  def show
    authorize @activity
  end

  def destroy
    authorize @activity
    @activity.destroy
    redirect_to root_path
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
