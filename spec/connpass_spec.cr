require "./spec_helper"

describe Connpass do
  it "VERSION" do
    Connpass::VERSION.should be_a(String)
  end
end
