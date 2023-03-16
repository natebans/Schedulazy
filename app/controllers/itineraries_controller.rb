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
    # @activity = Activity.where(category: params[:category], location: params[:name]).sample
    # @activity = Activity.where("category = ? AND location = ?", params[:category], params[:name]).sample
    if !params[:name].empty? && !params[:category].nil?
      @activities = Activity.where(location: params[:name]).where(category: params[:category])
    elsif !params[:name].empty? && params[:category].nil?
      @activities = Activity.where(location: params[:name])
    elsif !params[:category].nil? && params[:name].empty?
      @activities = Activity.where(category: params[:category])
    end

    if @itinerary.save!
      @activities.each { |activity| ItineraryActivityJoin.create!(itinerary: @itinerary, activity: activity) }
      # ItineraryActivityJoin.create!(itinerary: @itinerary, activity: @activity)
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
