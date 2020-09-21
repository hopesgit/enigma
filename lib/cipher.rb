require "date"

class Cipher
  attr_reader :calculator, :a, :b, :c, :d

  def initialize(text)
    @text = text
    @calculator = Calculator.new
    @key = get_key
    @a = nil
    @b = nil
    @c = nil
    @d = nil
  end

  def text
    @text.downcase.split("")
  end

  def get_key
    base = @calculator.get_key
    @a = base[0..1].to_i
    @b = base[1..2].to_i
    @c = base[2..3].to_i
    @d = base[3..4].to_i
    base
  end

  def get_date
    Date.today.strftime("%d%m%y").to_i
  end

  def get_date_square
    square = @calculator.square_it(get_date)
    square.to_s[-4..-1]
  end

  def get_offsets
    offset_base = get_date_square
    @a = (a + offset_base[0].to_i) % 27
    @b = (b + offset_base[1].to_i) % 27
    @c = (c + offset_base[2].to_i) % 27
    @d = (d + offset_base[3].to_i) % 27
  end
end
