class ActivitiesController < ApplicationController
  def new
  end

  def create
  end

  def get_by_type

  end

  def show
    @activity = Activity.find(params[:id])
  end

  def index
    @units = Unit.all
    @activities = Activity.all
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
