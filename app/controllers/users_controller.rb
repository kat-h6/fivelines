class UsersController < ApplicationController
  
  def student_assignments
  	@student = User.find(params[:id])
  	@assignments = @student.assignments
    
  end 

end

