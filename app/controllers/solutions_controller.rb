class SolutionsController < ApplicationController
  before_action :set_solution, only: :update
  def create
    @activity = Activity.find(params[:activity_id])
    @solution = Solution.new(solution_params)
    @solution.activity = @activity
    @solution.save
    redirect_to activity_path(@activity)
  end

  def update

  end

  private

  def set_solution
    @solution = Solution.find(params[:id])
  end
end
