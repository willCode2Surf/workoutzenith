require 'spec_helper'

describe Exercise do
  let (:exercise){FactoryGirl.build(:exercise)}

  context "#to_json" do
    it "should have a group" do
      exercise.to_json(:include => [:group]).should have_json_path("group")
    end
  end
end
