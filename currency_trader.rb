require_relative "currency_converter"

class CurrencyTrader
  def initialize(starting_currency, converter_past, converter_present)
    @starting_currency = starting_currency
    @converter_past = converter_past
    @converter_present = converter_present
  end
end
