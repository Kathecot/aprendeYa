class Activity < ApplicationRecord
  belongs_to :unit
  has_many :solutions

  validates :title, presence: true
  validates :description, presence: true
  validates :attachment, presence: true
  validates :preview_img, presence: true
end
