class MerchantFacade

  def self.all_merchants
    parsed = MerchantService.merchants
    parsed[:data].map do |d|
      Merchant.new(d)
    end
  end

end