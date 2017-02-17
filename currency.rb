# creates a class, Currency, that represents currencies to be converted
class Currency
  def initialize(value, code)
    @value = value.to_int
    @code = code
  end

  def value
    @value
  end

  def currency_code
    @code
  end

  def +(other)
    if other.is_a?(Integer)
      total = value + other
      Currency.new(total,currency_code)
    else
      total = (value + other.value)
      Currency.new(total, currency_code)
  end

  def -(other)
    if other.is_a?(Integer)
      total = value - other
      Currency.new(total,currency_code)
    else
      total = (value - other.value)
      Currency.new(total, currency_code)
  end

  def *(other)
    currency_code
    if other.is_a?(Integer)
      total = value * other
      Currency.new(total,currency_code)
    else
      total = (value * other.value)
      Currency.new(total, currency_code)
    end
  end
end
