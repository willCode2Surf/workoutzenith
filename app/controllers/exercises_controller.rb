class ExercisesController < ApplicationController
  respond_to :json

  def create
    @exercise = Exercise.create(params[:exercise])
    @exercise.save!
    respond_with @exercise
  end
end
