class Price < ActiveRecord::Base

def self.by_symbol_and_date(symbol, reqdate)
  price = Price.find_by symbol: symbol, reqdate: reqdate
  price = Price.fetch_price(symbol, reqdate) if price.empty?
end
