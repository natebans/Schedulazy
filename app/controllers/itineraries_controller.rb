class ItinerariesController < ApplicationController
  before_action :set_itinerary, only: [:show, :destroy]

  def index
    @itineraries = policy_scope(current_user.itineraries)
    # @itineraries = Itinerary.all

    @markers = @itineraries.geocoded.map do |itinerary|
      {
        lat: itinerary.latitude,
        lng: itinerary.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { itinerary: itinerary }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def new
    @itinerary = Itinerary.new
    authorize @itinerary
    @no_records = session[:no_records]
    session[:no_records] = nil
  end

  # to be fixed so it can use strong params!!!
  def create
    # @itinerary = Itinerary.new(itinerary_params)
    @itinerary = Itinerary.new(name: params[:name])
    @itinerary.user = current_user
    @itinerary.location = @itinerary.name
    authorize @itinerary
    if !params[:name].empty? && !params[:category].nil?
      @activities = Activity.where("location ILIKE ?", "%#{params[:name]}%").where(category: params[:category])
    elsif !params[:name].empty? && params[:category].nil?
      @activities = Activity.where("location ILIKE ?", "%#{params[:name]}%")
    elsif !params[:category].nil? && params[:name].empty?
      @activities = Activity.where(category: params[:category])
    end
    if @activities.empty?
      session[:no_records] = "Destination not available. Please input a different destination."
      return redirect_to new_itinerary_path
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
    params.require(:itinerary).permit(:name, :start_date, :end_date, :description, :location, photos: [])
  end
end
