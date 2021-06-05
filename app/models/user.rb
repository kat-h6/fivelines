class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true

  has_many :lessons, foreign_key: :teacher_id, dependent: :destroy
  has_many :students, through: :lessons
  has_many :assignments, through: :lessons
  has_many :resources
end
