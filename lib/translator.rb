require "./lib/encodable"

class Translator
  include Encodable

  attr_reader :input_text, :output_text

  def initialize(input_text)
    @input_text = input_text
    @output_text = nil
  end

  def encipher(a, b, c, d)
    heck = @input_text.map do |char|
      if alphabet.include?(char)
        index = alphabet.find_index(char)
        alphabet[(index + choose(char, a, b, c, d)) % 27]
      else
        char
      end
    end

    heck.join
  end

  def choose(input, a, b, c, d)
    index = @input_text.find_index(input)
    if index == 0 || index % 4 == 0
      a
    elsif index == 1 || index % 4 == 1
      b
    elsif index == 2 || index % 4 == 2
      c
    else
      d
    end
  end
end
