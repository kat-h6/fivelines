class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
    @students = current_user.students
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.teacher = current_user

    if @lesson.save
      redirect_to calendar_path
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  private

  def lesson_params
    params.require(:lesson).permit(:start_time, :end_time, :rate, :teacher_notes, :student_notes, :student_id)
  end
end
