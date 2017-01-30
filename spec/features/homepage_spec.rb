RSpec.describe 'visiting the homepage' do
  before do
    visit root_path
  end

  it 'should show homepage' do
    expect(page).to have_content('Enter a postcode')
  end
end
