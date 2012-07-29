class ApplicationController < ActionController::Base
  protect_from_forgery

  protected 
  def collection=(value)
    @collection = value
  end

  def plural_resource_name
     self.class.to_s.match(/(.+)Controller/)[1].pluralize.underscore
  end

  def resource_class
    self.class.to_s.match(/(.+)Controller/)[1].singularize.constantize
  end

  def resource_name
    self.class.to_s.match(/(.+)Controller/)[1].singularize
  end

  def collection
    @collection ||= Kaminari.paginate_array(resource_class.send(:all, sort: [[:name, :asc]])).page params[:page]
  end
end
