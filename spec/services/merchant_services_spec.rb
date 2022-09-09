require 'rails_helper'

RSpec.describe MerchantService do
  describe '#class_methods' do
    it 'should return all merchants' do

      ms = MerchantService.merchants
      m = ms[:data].first


      expect(ms).to be_a(Hash)
      expect(ms[:data]).to be_a(Array)
      expect(m).to have_key :attributes
      expect(m[:attributes]).to have_key :name
      expect(m[:attributes][:name]).to be_a(String)
    end
  end
end