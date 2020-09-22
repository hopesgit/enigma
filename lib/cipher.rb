require "date"

class Cipher
  attr_reader :calculator, :a, :b, :c, :d

  def initialize(text, key = "random", date = "today")
    @text = text
    @calculator = Calculator.new
    @key = get_key(key)
    @date = get_date(date)
    @a = nil
    @b = nil
    @c = nil
    @d = nil
  end

  def text
    @text.downcase.split("")
  end

  def get_key(key)
    if key == "random"
      base = @calculator.get_key
      assign_keys(base)
      base
    else
      assign_keys(key)
      key
    end
  end

  def assign_keys(root)
    @a = root[0..1].to_i
    @b = root[1..2].to_i
    @c = root[2..3].to_i
    @d = root[3..4].to_i
  end

  def get_date(date)
    if date == "today"
      Date.today.strftime("%d%m%y").to_i
    else
      date.to_i
    end
  end

  def get_date_square
    square = @calculator.square_it(@date)
    square.to_s[-4..-1]
  end

  def get_offsets
    offset_base = get_date_square
    @a = (a + offset_base[0].to_i) % 27
    @b = (b + offset_base[1].to_i) % 27
    @c = (c + offset_base[2].to_i) % 27
    @d = (d + offset_base[3].to_i) % 27
  end

  def encipher
    caesar = Translator.new(text)
    caesar.encipher(@a, @b, @c, @d)
  end

  def process
    get_offsets
    encipher
  end
end
