class UsersController < ApplicationController
  
  def student_assignments
  	@student = Student.find(params[:student_id])
  	@assignments = student.assignments
  end 

end

