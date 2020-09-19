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
    @text.downcase.split(//)
  end

  def get_key
    base = @calculator.get_key
    @a = base[0..1].to_i
    @b = base[1..2].to_i
    @c = base[2..3].to_i
    @d = base[3..4].to_i
    base
  end
end
