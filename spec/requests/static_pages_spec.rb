require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe "GET /" do
    it "should get root" do
      get '/'
      expect(response).to have_http_status(200)
      expect(response.body).to match(/<title>home | #{base_title}<\/title>/i)
    end
  end
end
