module ApplicationHelper

  def duration_as_minutes_and_seconds(seconds)
    "#{seconds / 60} min and #{seconds % 60} sec"
  end
end
