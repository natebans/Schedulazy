class ItinerariesController < ApplicationController
  before_action :set_itinerary, only: [:show, :destroy]

  def index
    @itineraries = policy_scope(Itinerary)
  end

  def new
    @itinerary = Itinerary.new
    authorize @itinerary
  end

  # to be fixed so it can use strong params!!!
  def create
    # @itinerary = Itinerary.new(itinerary_params)
    @itinerary = Itinerary.new(name: params[:name])
    @itinerary.user = current_user
    authorize @itinerary
    @activity = Activity.where(categories: params[:category]).sample
    if @itinerary.save
      ItineraryActivityJoin.create!(itinerary: @itinerary, activity: @activity)
      redirect_to itinerary_path(@itinerary)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    authorize @itinerary
  end

  def destroy
    authorize @itinerary
    @itinerary.destroy
    redirect_to itinerary_path
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:name, :start_date, :end_date, :description, photos: [])
  end
end
