class Course < ApplicationRecord
  has_one_attached :course_img
  has_many :enrollments
  has_many :units
  validates :name, presence: true
end
