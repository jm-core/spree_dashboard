RSpec.describe 'Dashboards', type: :request do

  describe 'GET /dashboards' do
    it 'returns a list of available dashboards' do
      get spree.dashboards_path
      resp = JSON.parse(response.body)
      expect(resp['dashboards']).to include('main')
    end
  end
end
