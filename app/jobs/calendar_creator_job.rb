class CalendarCreatorJob < ApplicationJob
  queue_as :default
  self.queue_adapter = :resque

  def perform(start_date_string, name, n_days)
    # Do something later
    start_date = Date.parse(start_date_string)

    if Calendar.exists(start_date, n_days)
       
    else
      Calendar.create start_date: start_date, user_id: current_user.id, name: name, n_days: n_days 
      create_calendar_item
    end
  end

  def create_calendar_items(calendar)
    next_date = calendar.start_date
    while next_date.year <= calendar.start_date.year do
      weekend = (next_date.wday == 0 || next_date.wday == 6)
      CalendarItem.create start_event_date: next_date.beginning_of_day, end_event_date: next_date.end_of_day, is_weekend: weekend
      next_date = next_date + calendar.n_days.day
    end
  end


end
