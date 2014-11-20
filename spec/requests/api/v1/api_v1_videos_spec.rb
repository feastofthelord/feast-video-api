require 'rails_helper'

RSpec.describe "Api::V1::Videos", :type => :request do
  describe "GET /api_v1_videos" do
    it "works! (now write some real specs)" do
      get api_v1_videos_path
      expect(response).to have_http_status(200)
    end
  end
end
