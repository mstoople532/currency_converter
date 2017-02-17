# procedures used for converting currency
require_relative "currency"

class CurrencyConverter
  def convert(starting_currency, final_currency, currency_table)
    currency_table.fetch(final_currency) / currency_table.fetch(starting_currency)
  end
end

conversion_rates = {
  "USD" => 1,
  "EUR" => 0.936617,
  "GBP" => 0.800028
}

convert(currency_to_convert, currency_to_convert_to, conversion_rates)
