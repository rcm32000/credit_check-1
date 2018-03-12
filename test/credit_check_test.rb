require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/credit_check'

class TestCreditCheck < Minitest::Test

  def test_class_exsists
    number = CreditCheck.new(1234123412341234)

    assert_instance_of CreditCheck, number
  end

  def test_credit_array
    number = CreditCheck.new(1234123412341234)

    assert_equal [4, 3, 2, 1, 4, 3, 2, 1, 4, 3, 2, 1, 4, 3, 2, 1], number.credit_array
  end

  def test_creation_of_odd_array
    number = CreditCheck.new(1234123412341234)

    assert_equal [3, 1, 3, 1, 3, 1, 3, 1], number.odd_array
  end

  def test_double_odd_array
    number = CreditCheck.new(1234123412341234)
    double = number.doubler

    assert_equal [6, 2, 6, 2, 6, 2, 6, 2], double
  end

  def test_simplifies_numbers_greater_than_10
    number = CreditCheck.new(6789678967896789)
    simple = number.adder

    assert_equal [7, 3, 7, 3, 7, 3, 7, 3], simple
  end

  def test_credit_number_is_valid
    number = CreditCheck.new(5541808923795240)

    assert number.valid?
  end
end
