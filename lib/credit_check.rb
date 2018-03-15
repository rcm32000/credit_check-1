class CreditCheck
  attr_reader :credit_number

  def initialize(credit_number = 0)
    @credit_number = credit_number
  end

  def credit_array
    @credit_number.to_i.digits
  end

  def doubler
    credit_array.map.with_index do |number, index|
      odd(number, index)
    end
  end

  def odd(number, index)
    return number * 2 if index.odd?
    number
  end

  def adder
    doubler.map do |number|
      number.digits.sum
    end
  end

  def valid?
    (adder.sum % 10).zero?
  end

  def output
    return 'The number is valid!' if valid? == true
    return 'The number is invalid!' if valid? == false
  end
end
