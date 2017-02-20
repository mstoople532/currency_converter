require_relative "currency_converter"

conversion_rates_present = {
  "USD" => 1,
  "EUR" => 0.936617,
  "GBP" => 0.800028
}

conversion_rates_past = {
  "USD" => 1,
  "EUR" => 0.869847,
  "GBP" => 0.943234
}


class CurrencyTrader
  def initialize(starting_currency, converter_past, converter_present)
    @starting_currency = starting_currency
    @converter_past = converter_past
    @converter_present = converter_present
  end
  def fitches_money(converter_past, converter_present)
    converter_past[]
    
end


dollar = Currency.new("$4", "USD")
pound = Currency.new("$1", "GBP")
euro = Currency.new("1", "EUR")
dollar.value

converter_new = CurrencyConverter.new(conversion_rates_present)
converter_old = CurrencyConverter.new(conversion_rates_past)

trade_star = Currency.trader.new(dollar, converter_old, converter_new)
