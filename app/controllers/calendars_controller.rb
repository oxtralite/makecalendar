class CalendarsController < ApplicationController

  around_filter :set_time_zone, :only => :show

  def index
    @calendars = Calendar.all.order(:title)
  end

  def show
    set_calendar
    @events = @calendar.events
  end

  def set_time_zone(&block)
    set_calendar
    Time.use_zone(@calendar.timezone, &block)
  end

  private

  def set_calendar
    @calendar ||= Calendar.find(params[:id])
  end

end
