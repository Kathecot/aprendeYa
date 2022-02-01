class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :solutions
  validates :final_grade, presence: true
end
