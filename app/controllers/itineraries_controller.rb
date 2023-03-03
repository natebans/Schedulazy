class ItinerariesController < ApplicationController
  before_action :set_itinerary, only: [:show, :destroy]

  def index
    @itineraries = Itinerary.all
  end

  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)

    if @itinerary.save
      redirect_to @itinerary_path(@itinerary)
    else
      render :new, , status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @itinerary.destroy
    redirect_to itinerary_path
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:name, :start_date, :end_date, :description)
  end
end
