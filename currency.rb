# creates a class, Currency, that represents currencies to be converted
class Currency
  def initialize(value, code = 0)
    symbols = {
      "$" => "USD",
      "£" => "GBP",
      "€" => "EUR"
    }
    if symbols.keys.include?(value.chr)
      symbols[value.chr]
      @value = value.tr(value.chr, "0").to_i
      @code = symbols[value.chr]
    else
      @value = value
      @code = code
    end
  end

  def value
    @value
  end

  def currency_code
    @code
  end

  def +(other)
    if other.is_a?(Integer || Float)
      total = value + other
    elsif currency_code == other.currency_code
      total = (value + other.value)
    end
    Currency.new(total, currency_code)
  end

  def -(other)
    if other.is_a?(Integer || Float)
      total = value - other
    elsif currency_code == other.currency_code
      total = (value - other.value)
    end
    Currency.new(total, currency_code)
  end

  def *(other)
    if other.is_a?(Integer || Float)
      total = value * other
    elsif currency_code == other.currency_code
      total = (value * other.value)
    end
    Currency.new(total, currency_code)
  end

  def /(other)
    if other.is_a?(Integer || Float)
      total = value / other
    elsif currency_code == other.currency_code
      total = (value / other.value)
    end
    Currency.new(total, currency_code)
  end
end
