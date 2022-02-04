class ActivitiesController < ApplicationController
  def new
  end

  def create
  end

  def get_by_type
<<<<<<< HEAD

=======
    if Activity.activity_types.keys.include?(params[:type])
      @activities = Activity.where(activity_type: params[:type], unit: params[:unit_id])
    else
      @activities = []
    end
>>>>>>> master
  end

  def show
    @activity = Activity.find(params[:id])
<<<<<<< HEAD
    # @solution = @activity.solutions.find_by(user: current_user)
=======
>>>>>>> master
  end

  def index
    @units = Unit.all
<<<<<<< HEAD
    @activities = Activity.all
=======
    @activities = Activity.activity_type_ejercicio
>>>>>>> master
  end

  def update

  end

  def edit
  end

  def destroy
  end
end
