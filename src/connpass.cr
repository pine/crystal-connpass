require "./connpass/*"

module Connpass
  ENDPOINT = "http://connpass.com/api/v1/"

  extend Connpass::Connection
  extend Connpass::Event
end
