require 'spec_helper'

describe ExercisesController do
  let(:exercise){FactoryGirl.create(:exercise)}

  describe '#create' do
    context 'given valid params' do

      it 'creates a new exercise' do
        post :create.to_json
      end

    end
  end
end
