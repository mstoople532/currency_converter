conversion_rates = {
  "USD" => 1,
  "EUR" => 0.936617,
  "GBP" => 0.800028
}

def convert(starting_currency, final_currency, currency_table)
  final_currency/starting_currency
end
