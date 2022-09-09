class ItemFacade

  def self.items(id)
    parsed = MerchantService.merchant_items(id)
    parsed[:data].map do |d|
      Item.new(d)
    end
  end
end