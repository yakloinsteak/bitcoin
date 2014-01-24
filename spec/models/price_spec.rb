require 'spec_helper'

describe Price do
  before(:each) do
    Price.delete_all
  end

  context '#by_symbol_and_date' do
    let(:test_price) {Price.create(:symbol => 'USD', :price => 10.2, :reqdate => Date.parse('2013-10-19'))}

    it 'retrieves price from database if it exists there' do
      test_price
      our_price = Price.by_symbol_and_date('USD', Date.parse('2013-10-19'))

      our_price.should eq(test_price)
    end

    it 'retrieves price from service if price not in database' do
      RequestCurrency.stub(:fetch_price).and_return(11.75)
      our_price = Price.by_symbol_and_date('USD', Date.parse('2013-10-19'))

      our_price.should eq(11.75)
    end
  end

  context '#fetch_price' do
  end
end
