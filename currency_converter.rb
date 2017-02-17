# procedures used for converting currency
require_relative "currency"  # => true

conversion_rates = {
"USD" => 1,           # => 1
"EUR" => 0.936617,    # => 0.936617
"GBP" => 0.800028     # => 0.800028
}                     # => {"USD"=>1, "EUR"=>0.936617, "GBP"=>0.800028}

class CurrencyConverter
  def initialize(currency_to_convert,currency_to_convert_to)
    @currency_to_convert = currency_to_convert
    @currency_to_convert_to = currency_to_convert_to
  end                                                         # => :initialize

  def convert(starting_currency, final_currency, currency_table)
    currency_table.fetch(final_currency) / currency_table.fetch(starting_currency)
  end                                                                               # => :convert
end                                                                                 # => :convert


dollar = Currency.new(1, "USD")  # => #<Currency:0x007fdb89855810 @value=1, @code="USD">
pound = Currency.new(1, "GBP")   # => #<Currency:0x007fdb898554c8 @value=1, @code="GBP">
euro = Currency.new(1, "EUR")    # => #<Currency:0x007fdb898551f8 @value=1, @code="EUR">

convert(dollar, pound, conversion_rates)  # ~> NoMethodError: undefined method `convert' for main:Object

# ~> NoMethodError
# ~> undefined method `convert' for main:Object
# ~>
# ~> /Users/macbook/Homework/Currency_Converter/currency_converter.rb:26:in `<main>'
