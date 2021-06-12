class Lesson < ApplicationRecord
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :future_start_time

  belongs_to :student, class_name: 'User', foreign_key: 'student_id'
  belongs_to :teacher, class_name: 'User', foreign_key: 'teacher_id'
  has_many :assignments

  scope :today, -> { where("start_time > ?", Date.today.beginning_of_day) }

  private

  def future_start_time
    errors.add(:start_time, "Can't be in the past!") if start_time < Time.now
  end
end
