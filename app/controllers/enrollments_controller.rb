class EnrollmentsController < ApplicationController
  def index
    @enrollments = Enrollment.all
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:final_grade)
  end
end
