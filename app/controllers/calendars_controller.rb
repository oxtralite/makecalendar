class CalendarsController < ApplicationController

  def index
    @calendars = Calendar.all.order(:title)
  end

  def show
    @calendar = Calendar.find(params[:id])
  end

end
