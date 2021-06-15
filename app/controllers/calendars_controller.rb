class CalendarsController < ApplicationController
  def show
    @lessons = current_user.lessons

    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date

    # For a monthly view:
    @meetings = Lesson.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week, teacher: current_user)

    # For a daily view:
    @schedule = Lesson.where(start_time: start_date.beginning_of_month.beginning_of_week.beginning_of_day..start_date.end_of_month.end_of_week.end_of_day)

    # # Or, for a weekly view:
    # @meetings = Lesson.where(starts_at: start_date.beginning_of_week..start_date.end_of_week)
  end
end
