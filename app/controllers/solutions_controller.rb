class SolutionsController < ApplicationController
  def create
    @activity = Activity.find(params[:activity_id])
    @solution = Solution.new
  end

  def update

  end
end
