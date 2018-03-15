require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/credit_check'

class TestCreditCheck < Minitest::Test

  def test_class_exists
    number = CreditCheck.new(1234123412341234)

    assert_instance_of CreditCheck, number
  end

  def test_credit_array
    number = CreditCheck.new(1234123412341234)

    assert_equal [4, 3, 2, 1, 4, 3, 2, 1, 4, 3, 2, 1, 4, 3, 2, 1], number.credit_array
  end

  def test_double_array
    number = CreditCheck.new(1234123412341234)
    double = number.doubler

    assert_equal [4, 6, 2, 2, 4, 6, 2, 2, 4, 6, 2, 2, 4, 6, 2, 2], double
  end

  def test_simplifies_numbers_greater_than_10
    number = CreditCheck.new(6789678967896789)
    simple = number.adder

    assert_equal [9, 7, 7, 3, 9, 7, 7, 3, 9, 7, 7, 3, 9, 7, 7, 3], simple
  end

  def test_credit_number_is_valid
    number = CreditCheck.new(5541808923795240)

    assert number.valid?
  end

  def test_number_is_not_valid
    number = CreditCheck.new(5541801923795240)

    refute number.valid?
  end

  def test_american_express_valid
    number = CreditCheck.new(342804633855673)

    assert number.valid?
  end

  def test_american_express_not_valid
    number = CreditCheck.new(342801633855673)

    refute number.valid?
  end

    def test_output_positive
      number = CreditCheck.new(342804633855673)
      assert_equal "The number is valid!", number.output
    end

    def test_output_negative
      number = CreditCheck.new(342801633855673)

      assert_equal "The number is invalid!", number.output
    end
end
