require 'rails_helper'

RSpec.describe "Partidos", type: :request do
  describe "GET /partidos" do
    xit "works! (now write some real specs)" do
      get partidos_path
      expect(response).to have_http_status(200)
    end
  end
end
