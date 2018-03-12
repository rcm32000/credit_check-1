class CreditCheck
  attr_reader :credit_number

  def initialize(credit_number)
    @credit_number = credit_number
  end

  def credit_array
    @credit_number.digits
  end

  def odd_array
    odd_index = []
    credit_array.each_with_index do |number, index|
      odd_index << number if index.odd?
    end
    odd_index
  end

  def doubler
    doubled_array = []
    odd_array.map do |number|
      doubled_array << (number * 2)
    end
    doubled_array
  end

  def adder
    simple_array = []
    doubler.map do |number|
      simple_array << number.digits.sum
    end
    simple_array
  end

  # def valid?
  #   (adder.concate(@credit_number).sum % 10).zero?
  # end
end
