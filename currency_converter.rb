# procedures used for converting currency
require_relative "currency"

conversion_rates = {
  "USD" => 1,
  "EUR" => 0.936617,
  "GBP" => 0.800028
}

class CurrencyConverter
  def initialize(currency_table)
    @currency_table = currency_table
  end

  def currency_table
    @currency_table
  end

  def convert(starting_currency, final_currency)
    numerator = currency_table[final_currency.currency_code]
    denominator = currency_table[starting_currency.currency_code]
    ratio = numerator / denominator
    starting_currency.value * ratio
  end
end

dollar = Currency.new(4, "USD")
pound = Currency.new(1, "GBP")
euro = Currency.new(1, "EUR")
dollar.value
converter = CurrencyConverter.new(conversion_rates)

converter.convert(dollar, pound)
