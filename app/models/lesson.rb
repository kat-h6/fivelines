class Lesson < ApplicationRecord
  validates :start_time, presence: true
  validates :end_time, presence: true
  # validate :future_start_time

  belongs_to :student, class_name: 'User', foreign_key: 'student_id'
  belongs_to :teacher, class_name: 'User', foreign_key: 'teacher_id'
  has_many :assignments

  accepts_nested_attributes_for :assignments


  scope :today, -> { where("start_time > ? AND start_time < ?", Date.today.beginning_of_day, Date.today.end_of_day) }

  default_scope -> { order(:start_time) }

  before_create :set_vonage_session_id

  def time
    "#{start_time.strftime('%I:%M %p')} - #{end_time.strftime('%I:%M %p')}"
  end

  def starting_in
    total_seconds = start_time - Time.now
    total_days = total_seconds / 86400
    if total_days > 1
      days = (total_seconds / 86400).floor
      "starting in #{days} days"
    else
      hours = (total_seconds / 3600).floor
      minutes = ((total_seconds / 60) % 60).floor
      "starting in #{hours} hrs and #{minutes} mins"
    end
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
