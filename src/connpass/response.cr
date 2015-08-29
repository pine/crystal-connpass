require "json"

module Connpass
  module Response
    class Result
      json_mapping({
        results_returned: Int32,
        results_available: Int32,
        results_start: Int32,
        events: Array(Event),
      })
    end

    class Event
      json_mapping({
        event_id: Int32,
        title: { type: String, nilable: true },
        catch: { type: String, nilable: true },
        description: { type: String, nilable: true },
        event_url: { type: String, nilable: true },
        hash_tag: { type: String, nilable: true },
        started_at: { type: String, nilable: true },
        ended_at: { type: String, nilable: true },
        limit: { type: Int32, nilable: true },
        event_type: { type: String, nilable: true },
        series: { type: Series, nilable: true },
        address: { type: String, nilable: true },
        place: { type: String, nilable: true },
        lat: { type: String, nilable: true },
        lon: { type: String, nilable: true },
        owner_id: Int32,
        owner_nickname: String,
        owner_display_name: String,
        accepted: { type: Int32, nilable: true },
        waiting: {type: Int32, nilable: true },
        updated_at: String,
      })
    end

    class Series
      json_mapping({
        id: Int32,
        title: { type: String, nilable: true },
        url: { type: String, nilable: true },
      })
    end
  end
end

