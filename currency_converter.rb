# procedures used for converting currency
require_relative "currency"

conversion_rates = {
"USD" => 1,
"EUR" => 0.936617,
"GBP" => 0.800028
}

class CurrencyConverter
  def initialize(currency_to_convert, currency_to_convert_to, currency_table)
    @currency_to_convert = currency_to_convert
    @currency_to_convert_to = currency_to_convert_to
    @currency_table = currency_table
  end

  def currency_to_convert
    @currency_to_convert
  end

  def currency_code
    @currency_to_convert_to
  end

  def currency_table
    @currency_table
  end
  def convert(starting_currency, final_currency, currency_table)
    currency_table.fetch(final_currency) / currency_table.fetch(starting_currency)
  end
end


dollar = Currency.new(1, "USD")
pound = Currency.new(1, "GBP")
euro = Currency.new(1, "EUR")

CurrencyConverter.convert(dollar, pound, conversion_rates)


currency_table.fetch(dollar)
