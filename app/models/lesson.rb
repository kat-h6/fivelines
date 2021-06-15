class Lesson < ApplicationRecord
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :future_start_time

  belongs_to :student, class_name: 'User', foreign_key: 'student_id'
  belongs_to :teacher, class_name: 'User', foreign_key: 'teacher_id'
  has_many :assignments


  scope :today, -> { where("start_time > ?", Date.today.beginning_of_day) }
  
  default_scope -> { order(:start_time) }

  before_create :set_vonage_session_id

  def time
    "#{start_time.strftime('%I:%M %p')} - #{end_time.strftime('%I:%M %p')}"
  end

  private

  def future_start_time
    errors.add(:start_time, "Can't be in the past!") if start_time < Time.now
  end

  def set_vonage_session_id
    opentok = OpenTok::OpenTok.new ENV['VONAGE_API_KEY'], ENV['VONAGE_API_SECRET']
    session = opentok.create_session
    self.vonage_session_id = session.session_id
  end
end
