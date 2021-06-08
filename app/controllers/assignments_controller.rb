class AssignmentsController

  def index

    @student = Student.find(params[:student_id])
    @assignments = []
    @student.lessons.each do |lesson|
      lesson.assignments.each do |assignment|
        @assignments << assignment
     	end
     end
  end

  def new    
    @lesson = Lesson.find(params[:lesson_id])
    @assignment = Assignment.new
  end

  def create
 	@lesson = Lesson.find(params[:lesson_id])
    @assignment = Assignment.new
    @assignment.lesson = @lesson
    @assignment.save
  end

  def update
  	@assignment = Assignment.find(params[:assignment_id])
  	@assignment.update(params[:assignment])
  end

  private

  def assignment_params
    params.require(:assignment).permit(:due_date, :status, :feedback, :details)
  end



end 