class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  # broke out teacher relationship and student relationship
  has_many :student_lessons, class_name: "Lesson", foreign_key: :teacher_id, dependent: :destroy
  has_many :lessons, foreign_key: :student_id, dependent: :destroy
  has_many :students, through: :student_lessons
  has_many :assignments, through: :lessons
  has_many :student_assignments, through: :student_lessons, source: :assignments
  has_many :resources
  has_many :chapters, through: :resources

  scope :are_students?, -> { where(teacher:false) }

  def role
    self.teacher ? "teacher" : "student"
  end

  def full_name
    first_name + " " + last_name
  end
end
