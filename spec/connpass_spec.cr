require "./spec_helper"

describe Connpass do
  it "VERSION" do
    Connpass::VERSION.should be_a(String)
  end

  it "get" do
    WebMock.wrap do
      WebMock.stub(:get, "connpass.com/api/v1/event/?keyword=Crystal")
      Connpass.get("event", { "keyword" => "Crystal" })
    end
  end

  it "convert_response" do
    json_str = <<-EOF
    {
      "results_returned": 1,
      "results_available": 1,
      "results_start": 1,
      "events": [
        {
          "event_id": 10,
          "title": "title",
          "catch": "catch",
          "series": {
            "id": 100,
            "title": "series title",
            "url": "http://www.example.com/"
          }
        }
      ]
    }
    EOF

    res = Connpass.convert_response(json_str)

    res.results_returned.should eq(1)
    res.results_available.should eq(1)
    res.results_start.should eq(1)
    res.events.size.should eq(1)
    res.events[0].event_id.should eq(10)
    res.events[0].title.should eq("title")
    res.events[0].catch.should eq("catch")

    if series = res.events[0].series
      series.id.should eq(100)
      series.title.should eq("series title")
      series.url.should eq("http://www.example.com/")
    end
  end
end

