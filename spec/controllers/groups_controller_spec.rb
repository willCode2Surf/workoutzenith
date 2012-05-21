require 'spec_helper'

describe GroupsController do
  let(:groups){FactoryGirl.build_list(:group, 1)}

  describe 'Get :index' do
    it 'returns a list of groups in json' do
      puts groups.length
    end
  end
end
