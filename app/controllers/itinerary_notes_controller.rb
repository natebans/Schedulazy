class ItineraryNotesController < ApplicationController
  before_action :set_itinerary_note, only: [:edit, :update, :destroy]

  def new
    @itinerary_note = ItineraryNote.new
    authorize @itinerary_note
  end

  def create
    @itinerary_note = ItineraryNote.new(itinerary_note_params)
    @itinerary_note.user = current_user
    authorize @itinerary_note

    if @itinerary_note.save
      redirect_to itinerary_path(@itinerary)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    authorize @itinerary_note
  end

  def update
    authorize @itinerary_note
    if @itinerary_note.update(itinerary_note_params)
      redirect_to itinerary_path(@itinerary)
    else
      render 'update', status: :unprocessable_entity
    end
  end

  def destroy
    authorize @itinerary_note
    @itinerary_note.destroy
    redirect_to root_path
  end

  private

  def set_itinerary_note
    @itinerary_note = ItineraryNote.find(params[:id])
  end

  def itinerary_note_params
    params.require(:itinerary_note).permit(:description)
  end
end
