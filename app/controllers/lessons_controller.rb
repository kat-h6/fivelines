class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update]

  def new
    @lesson = Lesson.new
    @students = current_user.students
  end

  def show
    opentok = OpenTok::OpenTok.new ENV['VONAGE_API_KEY'], ENV['VONAGE_API_SECRET']
    @token = opentok.generate_token @lesson.vonage_session_id, { name: current_user.first_name }
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
  end

  def update
    @lesson.update(lesson_params)
    redirect_to student_path(@lesson.student)
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:start_time, :end_time, :rate, :teacher_notes, :student_notes, :student_id)
  end
end
