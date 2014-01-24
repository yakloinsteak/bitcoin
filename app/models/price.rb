class Price < ActiveRecord::Base

  def self.by_symbol_and_date(symbol, reqdate)
    price = Price.find_by symbol: symbol, reqdate: reqdate
    return price if price
    price = Price.fetch_price(symbol, reqdate)
  end

  def self.fetch_price(symbol, reqdate)
    RequestCurrency.fetch_price(symbol, reqdate)
  end
end
