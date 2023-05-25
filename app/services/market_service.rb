class MarketService
  def all_markets
    get_url("/api/v0/markets")
  end

  def get_url
    response = conn.get(url)
    Json.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "localhost:3000") do |faraday|
      faraday.headers = { 'Content-Type' => 'application/json' }
    end
  end
end