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
    elsif currency_code == other.currency_code
      total = (value + other.value)
    end
    Currency.new(total, currency_code)
  end

  def -(other)
    if other.is_a?(Integer)
      total = value - other
    elsif currency_code == other.currency_code
      total = (value - other.value)
    end
    Currency.new(total, currency_code)
  end

  def *(other)
    if other.is_a?(Integer)
      total = value * other
    elsif currency_code == other.currency_code
      total = (value * other.value)
    end
    Currency.new(total, currency_code)
  end

  def /(other)
    if other.is_a?(Integer)
      total = value / other
    elsif currency_code == other.currency_code
      total = (value / other.value)
    end
    Currency.new(total, currency_code)
  end
end
