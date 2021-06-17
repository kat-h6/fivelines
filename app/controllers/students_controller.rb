class StudentsController < ApplicationController
  def index
    #@students = current_user.students

    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
      @students = current_user.students.where(sql_query, query: "%#{params[:query]}%").uniq
    else
      @students = current_user.students.uniq
    end
  end

  def show
    @student = User.find(params[:id])
    @lessons = @student.lessons
    @lesson = @lessons.today.first
  end
end
