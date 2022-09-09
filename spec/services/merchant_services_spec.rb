require 'rails_helper'

RSpec.describe MerchantService do
  describe '#class_methods' do
    it '#merchants' do

      ms = MerchantService.merchants
      m = ms[:data].first


      expect(ms).to be_a(Hash)
      expect(ms[:data]).to be_a(Array)
      expect(m).to have_key :attributes
      expect(m[:attributes]).to have_key :name
      expect(m[:attributes][:name]).to be_a(String)
    end

    it '#merchant_items' do
      ms = MerchantService.merchant_items("1")

      expect(ms).to be_a(Hash)
    end
  end
end