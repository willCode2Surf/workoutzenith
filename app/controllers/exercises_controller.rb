class ExercisesController < ApplicationController
  respond_to :json

  def create
    @exercise = Exercise.create(params[:exercise])
    if @exercise.save
      respond_with @exercise
    else
      respond_with(@exercise.errors, :status => :unprocessable_entity)
    end
  end
end
