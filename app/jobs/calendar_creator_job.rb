class CalendarCreatorJob < ApplicationJob
  queue_as :default
  self.queue_adapter = :resque

  def perform(start_date_string)
    # Do something later
    start_date = Date.parse(start_date_string)
    next_date = start_date
    while next_date.year <= start_date.year do
      weekend = (next_date.wday == 0 || next_date.wday == 6)
      CalendarItem.create event_date: next_date, is_weekend: weekend
      next_date = next_date + 4.day
    end
  end
end
