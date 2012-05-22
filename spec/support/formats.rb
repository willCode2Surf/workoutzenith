module Support
  module Formats
    def json_response
      response = respond_to?(:last_response) ? last_response : self.response
      ActiveSupport::JSON.decode(response.body)
    end
  end
end
