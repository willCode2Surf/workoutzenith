class ExercisesController < ApplicationController
  respond_to :json

  def create
    @exercise = Exercise.create(params[:exercise])
    if @exercise.save
      respond_with @exercise
    else
      respond_with(@exercise, :status => :unprocessable_entity)
    end
  end

  def index
    @exercises = exercises

    respond_with @exercises
  end

  protected

    def exercises
      Exercise.all(sort: [[:name, :asc]])
    end
end
