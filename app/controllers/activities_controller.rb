class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :destroy]

  def show
  end

  def destroy
    @activity.destroy
    redirect_to root_path
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
