class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room, only: :show

  def index
    @rooms = Room.all
  end

  def show
    opentok = OpenTok::OpenTok.new ENV['VONAGE_API_KEY'], ENV['VONAGE_API_SECRET']
    @token = opentok.generate_token @room.vonage.session_id, { name: current_user.first_name }
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)

    if @room.save
      redirect_to @room
    else
      render :new
    end
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:start_time, :end_time, :rate, :teacher_notes, :student_notes, :student_id)
  end
end
