class DashboardsController < ApplicationController
  def calendar
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date
    # For a monthly view:
    @events = Event.where(user_id: current_user.id, start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def index
    @events = Event.where(user_id: current_user.id)
  end
end
