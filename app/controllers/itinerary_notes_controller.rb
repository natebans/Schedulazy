class ItineraryNotesController < ApplicationController
  before_action :set_itinerary_note, only: [:edit, :update, :destroy]

  def new
    @itinerary_note = ItineraryNote.new
  end

  def create
    @itinerary_note = ItineraryNote.new(itinerary_note_params)

    if @itinerary_note.save
      redirect_to @itinerary_path(@itinerary)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @itinerary_note.update(itinerary_note_params)
      redirect_to @itinerary_path(@itinerary)
    else
      render 'update', status: :unprocessable_entity
    end
  end

  def destroy
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
