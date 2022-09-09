require 'rails_helper'

RSpec.describe 'Merchants' do
  it 'displays all merchants and all merchants are links' do

    visit merchants_path

    within '#merchants0' do
      expect(page).to have_link("Schroeder-Jerde")
    end
  end
end