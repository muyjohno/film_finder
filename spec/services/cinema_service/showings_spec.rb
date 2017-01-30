RSpec.describe CinemaService::Showings do
  describe '.search' do
    let(:showings) { described_class.new('9524') }
    let(:result) do
      VCR.use_cassette('lookup cinema 9524') do
        showings.get
      end
    end

    it 'returns nearest cinema' do
      film = result.first

      aggregate_failures do
        expect(result.size).to eq(14)
        expect(film.title).to eq('Sing')
        expect(film.times).to eq([
          '10:00',
          '10:35',
          '11:35',
          '13:00',
          '14:05',
          '16:20',
          '17:05',
          '18:15',
          '19:15'
        ])
      end
    end
  end
end
