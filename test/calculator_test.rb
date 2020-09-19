require "./test/test_helper"

class CalculatorTest < Minitest::Test
  def test_it_is_calculator
    calc = Calculator.new

    assert_instance_of Calculator, calc
  end

  def test_it_can_get_a_random_base_key
    calc = Calculator.new
    assert_equal 5, calc.get_key.length
  end
end
