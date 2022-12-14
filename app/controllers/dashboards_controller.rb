class DashboardsController < ApplicationController
  require 'gruff'

  def calendar
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date
    # For a monthly view:
    @events = Event.where(user_id: current_user.id, start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def index
    timezone_offset = -18_000
    @event = current_user.events.where('start_time >= ?', (Time.current + timezone_offset)).order("start_time ASC").first
  end

  def graph
    g = Gruff::Line.new
    g.title = 'Wow!  Look at this!'
    # dates
    g.labels = { 0 => '5/6', 1 => '5/15', 2 => '5/24', 3 => '5/30', 4 => '6/4',
                 5 => '6/12', 6 => '6/21', 7 => '6/28' }
    # rating
    g.data :Jimmy, [25, 36, 86, 39, 25, 31, 79, 88]
    g.data :Charles, [80, 54, 67, 54, 68, 70, 90, 95]
    g.data :Julie, [22, 29, 35, 38, 36, 40, 46, 57]
    g.data :Jane, [95, 95, 95, 90, 85, 80, 88, 100]
    g.data :Philip, [90, 34, 23, 12, 78, 89, 98, 88]
    g.data :Arthur, [5, 10, 13, 11, 6, 16, 22, 32]
    g.write('graph.png')
  end
end
