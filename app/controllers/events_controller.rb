class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy program]

  def show
    @diaries = Diarie.where(user_id: current_user.id)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    timezone_offset = -18_000
    minutes_in_a_day = 1440
    half_hour = 30
    minutes_before_event = (@event.start_time - (Time.current + timezone_offset)).to_i / 60
    ActiveRecord::Base.transaction do
      @event.save!
      if minutes_before_event < half_hour
        EventsResource.create!(
          event: @event,
          resource: Resource.find_by_name('rain'),
          timing: half_hour
        )
        EventsResource.create!(
          event: @event,
          resource: Resource.find_by_name('visual'),
          timing: half_hour
        )
      elsif minutes_before_event >= minutes_in_a_day && minutes_before_event < (minutes_in_a_day * 2)
        EventsResource.create!(
          event: @event,
          resource: Resource.find_by_name('rainforest'),
          timing: minutes_in_a_day
        )
        EventsResource.create!(
          event: @event,
          resource: Resource.find_by_name('moutain'),
          timing: minutes_in_a_day
        )
      elsif minutes_before_event > minutes_in_a_day * 2
        EventsResource.create!(
          event: @event,
          resource: Resource.find_by_name('whale'),
          timing: minutes_in_a_day * 2
        )
        EventsResource.create!(
          event: @event,
          resource: Resource.find_by_name('aquarium'),
          timing: minutes_in_a_day * 2
        )
      end
      redirect_to calendar_path, notice: 'Event added'
    end
  rescue ActiveRecord::RecordInvalid
    render :new, status: :unprocessable_entity, notice: 'Something went wrong'
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event), notice: 'The event was updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @event.destroy
    redirect_to profile_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:start_time, :end_time, :name, :description)
  end
end
