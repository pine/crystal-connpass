module Connpass
  module Event
    def event_search(options = {} of String => String)
      convert_response(get("event", options))
    end
  end
end
