class ItineraryNotesController < ApplicationController
  before_action :set_itinerary_note, only: [:destroy]
  before_action :set_itinerary, only: [:new, :create, :destroy]

  def new
    @itinerary_note = ItineraryNote.new
    authorize @itinerary_note
  end

  def create
    @itinerary_note = ItineraryNote.new(itinerary_note_params)
    @itinerary_note.user = current_user
    @itinerary_note.itinerary = @itinerary
    authorize @itinerary_note

    if @itinerary_note.save
      redirect_to itinerary_path(@itinerary)
    end
  end

  def destroy
    authorize @itinerary_note
    @itinerary_note.destroy
    redirect_to itinerary_path(@itinerary)
  end

  private

  def set_itinerary_note
    @itinerary_note = ItineraryNote.find(params[:id])
  end

  def itinerary_note_params
    params.require(:itinerary_note).permit(:description)
  end

  def set_itinerary
    @itinerary = Itinerary.find(params[:itinerary_id])
  end
end
