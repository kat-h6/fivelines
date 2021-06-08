class CalendarsController < ApplicationController
  def show
    @lessons = current_user.lessons
  end
end
