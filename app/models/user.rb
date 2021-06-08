class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :lessons, foreign_key: :teacher_id, dependent: :destroy
  has_many :students, through: :lessons
  has_many :assignments, through: :lessons
  has_many :resources

  scope :are_students?, -> { where(teacher:false) }

  def full_name
    first_name + " " + last_name
  end
end
