class ItineraryActivityJoinsController < ApplicationController
  def show
    @itinerary_activity_joins = ItineraryActivityJoin.find(params[:id])
    authorize @itinerary_activity_joins
  end
  def destroy
    @itinerary_activity_joins = ItineraryActivityJoin.find(params[:id])
    authorize @itinerary_activity_joins
    @itinerary_activity_joins.destroy
    redirect_to itinerary_path(@itinerary_activity_joins.itinerary)
  end
end
