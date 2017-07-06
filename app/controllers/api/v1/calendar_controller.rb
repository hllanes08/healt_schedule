class API::V1::CalendarController < ApplicationController
  before_action :authenticate_with_token!, only: [:index, :create]

  def index
    render json: {calendar_items: Calendar.where(user_id: current_user.id).first.calendar_items }
  end

  def create 
    CalendarCreatorJob.perform_later(params[:start_date], params[:name], params[:ndays], current_user)
    render json: :success
  end
end
