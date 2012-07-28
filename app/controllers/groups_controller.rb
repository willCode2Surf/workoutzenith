class GroupsController < ApplicationController
  respond_to :json

  protected

    def groups
      Group.all(sort: [[:name, :asc]])
    end
end
