class MarketFacade
  def get_market_data
    market_data.map do |data|
      Market.new(data)
    end
  end

  def get_market(id)
    Market.new(single_market_data(id))
  end

  def get_market_vendors(id)
    market_vendors_data(id).map do |vendor|
      Vendor.new(vendor)
    end
  end

  def get_vendor(id)
    Vendor.new(single_vendor_data(id))
  end

  private

  def service
    @_service ||= MarketService.new
  end

  def market_data
    @_market_data ||= service.all_markets[:data]
  end

  def single_market_data(id)
    @_single_market_data ||= service.find_market(id)[:data]
  end

  def market_vendors_data(id)
    @_market_vendors_data ||= service.market_vendors(id)[:data]
  end

  def single_vendor_data(id)
    @_single_vendor_data ||= service.find_vendor(id)[:data]
  end
end