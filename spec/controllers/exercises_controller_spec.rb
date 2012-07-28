require 'spec_helper'

describe ExercisesController do
  let(:exercise){FactoryGirl.build(:exercise)}
  let(:exercises){ FactoryGirl.build_list(:exercise, 1) }

  describe '#create' do
    context 'given valid params' do
      it 'creates a new exercise' do
        post :create, :exercise => exercise
      end
    end
  end

  describe 'Get :index' do
    it 'returns a list of groups in json' do
      Group.stub(:all).and_return(exercises)
      get :index, :format => :json
      json = ActiveSupport::JSON.decode(response.body)
      json.size.should equal(1)
    end
  end
end
