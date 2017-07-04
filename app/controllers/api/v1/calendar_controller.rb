class API::V1::CalendarController < ApplicationController
  before_action :authenticate_with_token!, only: [:index, :create]

  def index
    render json: {calendar_items: CalendarItem.all}
  end

  def create
    CalendarCreatorJob.perform_later(params[:start_date])
    render json: :success
  end
end
