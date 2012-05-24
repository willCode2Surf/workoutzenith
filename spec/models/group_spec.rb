require 'spec_helper'

describe Group do
  let(:group){ FactoryGirl.create(:group) }

  context "#to_json" do
    it 'includes name' do
      group.to_json.should have_json_path("name")
    end
  end
end
