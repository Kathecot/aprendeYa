class SolutionsController < ApplicationController
  before_action :set_solution, only: :update
  def create
    @activity = Activity.find(params[:activity_id])
    @enrollment = @activity.unit.course.enrollments.find_by(user: current_user)
    @solution = Solution.new(solution_params)
    @solution.activity = @activity
    @solution.enrollment = @enrollment
    @solution.save
    redirect_to activity_path(@activity)
  end

  def update
    @solution.update(solution_params)
    redirect_to activity_path(@ctivity)
  end

  private
  def solution_params
    params.require(:solutions).permit(:score, :file, :comment)
  end


  def set_solution
    @solution = Solution.find(params[:id])
  end
end
