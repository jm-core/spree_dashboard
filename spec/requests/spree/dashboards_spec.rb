RSpec.describe 'Dashboards', type: :request do

  describe 'GET /dashboards' do
    it 'returns a list of available dashboards' do
      get spree.dashboards_path(format: :json)
      expect(response.body).to eq({ dashboards: [:main] }.to_json)
    end
  end
end
