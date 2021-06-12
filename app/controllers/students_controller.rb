class StudentsController < ApplicationController
  def index
    #@students = current_user.students

    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
      @students = current_user.students.where(sql_query, query: "%#{params[:query]}%")
    else
      @students = current_user.students
    end
  end
end
