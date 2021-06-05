class Assignment < ApplicationRecord
  validates :title, presence: true
  validates :details, presence: true
  validates :due_date, presence: true
  belongs_to :lesson
end
