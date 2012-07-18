require 'spec_helper'

describe ExercisesController do
  let(:exercise){FactoryGirl.build(:exercise)}

  describe '#create' do
    context 'given valid params' do
      it 'creates a new exercise' do
        post :create, :exercise => exercise.to_json
      end
    end
  end
end
