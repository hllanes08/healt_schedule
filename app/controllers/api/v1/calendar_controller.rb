class API::V1::CalendarController < ApplicationController
  before_action :authenticate_with_token!, only: [:index, :create, :show]

  def index
    render json: {calendas: Calendar.where(user_id: current_user.id) }
  end

  def show
    binding.pry
    render json: { calendar_items: Calendar.find(params[:id]).calendar_items }
  end

  def create 
    CalendarCreatorJob.perform_later(params[:start_date], params[:name], params[:ndays], current_user)
    render json: :success
  end
end
