require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'returns all merchants' do
    results = MerchantFacade.all_merchants

    expect(results.count).to eq(100)
  end
end