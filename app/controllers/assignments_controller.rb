class AssignmentsController < ApplicationController
  def show
    @assignment = Assignment.find(params[:id])
    @student = @assignment.lesson.student
  end

  def new
    @lesson = Lesson.find(params[:lesson_id])
    @assignment = Assignment.new
  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @assignment = Assignment.new(assignment_params)
    @assignment.lesson = @lesson

    if @assignment.save
      redirect_to student_assignments_user_path @lesson.student.id
    else
      render :new
    end
  end

  def update
    @assignment = Assignment.find(params[:id])
    @assignment.update(params[:assignment])
  end

  private

  def assignment_params
    params.require(:assignment).permit(:title, :due_date, :feedback, :details)
  end
end