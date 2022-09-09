require 'rails_helper'

RSpec.describe Merchant, type: :method do
  describe '#attributes' do
    it 'returns name of merchant' do
      data =
        {
          :id=>"1", 
          :type=>"merchant", 
          :attributes=>{:name=>"Schroeder-Jerde"}
        }
  
    merchant = Merchant.new(data)

    expect(merchant).to be_a(Merchant)
    expect(merchant.id).to eq("1")
    expect(merchant.name).to eq("Schroeder-Jerde")
    end
  end
end