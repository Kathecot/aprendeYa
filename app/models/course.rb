class Course < ApplicationRecord
  has_many :enrollments
  has_many :units
  validates :name, presence: true
  validates :course_img, presence: true
end
