require "./test/test_helper"

class CalculatorTest < Minitest::Test
  def setup
    @calc = Calculator.new
  end
  
  def test_it_is_calculator
    assert_instance_of Calculator, @calc
  end

  def test_it_can_get_a_random_base_key
    assert_equal 5, @calc.get_key.length
  end

  def test_it_can_square_date
    assert_equal 40000, @calc.square_it(200)
  end
end
