require 'spec_helper'

describe GroupsController do
  let(:groups){ FactoryGirl.build_list(:group, 1) }

  describe 'Get :index' do
    it 'returns a list of groups in json' do
      Group.stub(:all).and_return(groups)
      get :index, :format => :json
      json = ActiveSupport::JSON.decode(response.body)
      json.size.should equal(1)
    end
  end
end
