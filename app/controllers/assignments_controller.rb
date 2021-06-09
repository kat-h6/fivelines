class AssignmentsController
  def show
    @assignment = Assignment.find(params[:id])
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
    @assignment = Assignment.find(params[:id])
    @assignment.update(params[:assignment])
  end

  private

  def assignment_params
    params.require(:assignment).permit(:title, :due_date, :status, :feedback, :details)
  end
end