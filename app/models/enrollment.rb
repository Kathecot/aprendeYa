class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :solutions, through: :enrollments #, source: :join_association_table_fore, _objects_table
end
