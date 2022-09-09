class MerchantService

  def self.conn
    response = Faraday.new('http://localhost:3000/api/v1/')
  end

  def self.merchants
    response = conn.get('merchants')
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant_items(id)
    response = conn.get("merchants/#{id}/items")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end