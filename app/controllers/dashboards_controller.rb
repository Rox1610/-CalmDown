class DashboardsController < ApplicationController
  def index
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date

    # TODO add current_user
    # For a monthly view:
    @events = Event.where(user_id: current_user.id, start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end
end
