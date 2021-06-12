class DashboardsController < ApplicationController
  def show
    @lessons = current_user.lessons
  end

  def my_assignments
    @assignments = current_user.assignments
  end

  def teacher_notes
    @notes = teacher_notes.notes
  end

  def student_notes
    @notes = student_notes.notes
  end
end
