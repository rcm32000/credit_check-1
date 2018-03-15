require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/credit_check'
require './lib/run'

class TestRunnerFile < Minitest::Test

  def test_class_exists
    run = RunnerFile.new

    assert_instance_of RunnerFile, run
  end

  def test_input_validation
    run = RunnerFile.new
    input = 342804633855673

    assert run.input_valid?(input)
  end
end
