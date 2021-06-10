class UsersController < ApplicationController
  
  def student_assignments
  	@student = User.find(params[:id])
  	@assignments = @student.assignments
    puts "My assignments"
    puts @assignments
    puts "that's all"
  end 

end

