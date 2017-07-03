class API::V1::CalendarController < ApplicationController
  def index
    render json: CalendarItem.all
  end

  def create
    CalendarCreatorJob.perform_later(params[:start_date])
    render json: :success
  end
end
