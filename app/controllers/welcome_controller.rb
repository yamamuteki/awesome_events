class WelcomeController < ApplicationController
  def index
    @events = Event.where('? < end_time', Time.zone.now).order(:start_time)
  end
end
