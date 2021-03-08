require 'rails_helper'

RSpec.describe 'Properties API', type: :request do
  let!(:lga) { Lga.create!(code: 10) }
  let!(:property) { lga.properties.create(id: 1) }

  describe 'GET /properties/:id' do

    context 'with valid id' do

      it 'returns status code 200' do
        get "/api/v1/properties/#{property.id}"
        expect(response).to have_http_status(200)
      end
    end

    context 'with invalid id' do

      it 'returns status code 404' do
        get "/api/v1/properties/2"
        expect(response).to have_http_status(404)
      end
    end
  end

  describe 'GET /properties/' do

    it 'returns status code 200' do
      get "/api/v1/properties"
      expect(response).to have_http_status(200)
    end

    it 'returns all properties' do
      property2 = lga.properties.create(id: 2)
      get "/api/v1/properties"

      expect(JSON.parse(response.body).size).to eq(2)
    end
  end
end
