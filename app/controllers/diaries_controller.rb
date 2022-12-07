class DiariesController < ApplicationController
  before_action :set_event, only: %i[new create]

  def new
    @event_user = @event.user
    @diarie = Diarie.new
  end

  def create
    @diarie = Diarie.new(diarie_params)
    @diarie.event = Event.find(params[:event_id])
    @diarie.user = current_user
    if @diarie.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def diarie_params
    params.require(:diarie).permit(:rating, :description)
  end
end
