class Resource < ApplicationRecord
  belongs_to :user
  belongs_to :chapter

  validates :title, presence: true
end
