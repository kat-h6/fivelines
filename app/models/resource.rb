class Resource < ApplicationRecord
  belongs_to :user
  belongs_to :chapter
  has_one_attached :photo
  has_one_attached :video

  validates :title, presence: true
end
