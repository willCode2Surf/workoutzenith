class ApiController < ApplicationController
  def index
    # apply_scopes!

    self.collection = collection #.page params[:page] unless params[:ids]

    respond_with collection
  end

  protected 
  def collection=(value)
    @collection = value
  end

  def collection
    @collection ||= resource_class.send(:all, sort: [[:name, :asc]])
  end
end
