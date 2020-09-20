class Calculator
  def get_key
    base = rand(0..99999)
    "%05d" % base
  end

  def square_it(number)
    number * number
  end
end
