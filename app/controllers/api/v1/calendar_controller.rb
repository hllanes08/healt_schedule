class API::V1::CalendarController < ApplicationController
  def index
    CalendarCreatorJob.perform(Time.current.to_s)
    render json: {success: true}
  end
end
