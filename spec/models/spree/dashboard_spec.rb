RSpec.describe Spree::Dashboard, type: :model do
  describe '.all' do
    it 'returns a hash with available dashboards' do
      expect(described_class.all).to eq([:main])
    end
  end
end
