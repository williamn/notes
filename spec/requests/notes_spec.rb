require 'spec_helper'

describe Endpoint::API do
  before (:each) do
    @foo = create(:foo)
    @bar = create(:bar)
  end

  describe "GET /notes" do
    it "returns v1" do
      get "/notes"
      response.status.should == 200
      response.body.should == [
        {
          id: 1,
          title: @foo.title
        },
        {
          id: 2,
          title: @bar.title
        }
      ].to_json
    end

    it "returns v2" do
      get "/notes", nil, { 'Accept-Version' => 'v2' }
      response.status.should == 200
      response.body.should == {
        data: [
          {
            id: 1,
            title: @foo.title
          },
          {
            id: 2,
            title: @bar.title
          }
        ]}.to_json
    end
  end
end
