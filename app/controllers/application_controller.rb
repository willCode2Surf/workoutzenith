class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    # apply_scopes!

    self.collection = collection #.page params[:page] unless params[:ids]

    respond_with collection
  end

  protected 
  def collection=(value)
    @collection = value
  end

  def plural_resource_name
     self.class.to_s.match(/(.+)Controller/)[1].pluralize.underscore
  end

  def resource_name
    self.class.to_s.match(/(.+)Controller/)[1].singularize
  end

  def collection
    @collection ||= eval "#{resource_name}.all(sort: [[:name, :asc]])"
  end
end
