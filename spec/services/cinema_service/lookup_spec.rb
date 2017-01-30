RSpec.describe CinemaService::Lookup do
  describe '.search' do
    let(:lookup) { described_class.new('RG2 9FB') }
    let(:closest) do
      VCR.use_cassette('lookup RG2 9FB') do
        lookup.closest
      end
    end

    it 'returns nearest cinema' do
      aggregate_failures do
        expect(closest).to be_a(Cinema)
        expect(closest.name).to eq('VUE Reading,')
        expect(closest.address).to eq(
          'VUE Reading, The Oracle Centre, Off Mill Lane North, Reading, , RG1 2AG'
        )
      end
    end
  end
end
