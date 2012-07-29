class PagingController < ApiController
  protected
  def collection
    @collection ||= Kaminari.paginate_array(resource_class.send(:all, sort: [[:name, :asc]])).page params[:page]
  end
end
