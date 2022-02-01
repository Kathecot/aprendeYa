class Activity < ApplicationRecord
  belongs_to :unit
  has_one_attached :file
  has_one_attached :preview_img
  has_many :solutions
  validates :title, presence: true
  validates :description, presence: true
end
