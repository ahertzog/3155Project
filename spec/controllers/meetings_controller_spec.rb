require 'rails_helper'

RSpec.describe MeetingsController, type: :controller do

  describe "GET #location:string" do
    it "returns http success" do
      get :location:string
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #date:string" do
    it "returns http success" do
      get :date:string
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #time:string" do
    it "returns http success" do
      get :time:string
      expect(response).to have_http_status(:success)
    end
  end

end
