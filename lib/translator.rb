require "./lib/encodable"

class Translator
  include Encodable

  attr_reader :input_text, :output_text

  def initialize(input_text)
    @input_text = input_text
    @output_text = nil
  end

  def encipher(a, b, c, d)
    shift = Hash.new
    @input_text.each_with_index do |char, index|
      shift[index] = char
    end
    joiner(shift, a, b, c, d)
  end

  def joiner(input, a, b, c, d)
    output = rotator(input, a, b, c, d)
    @output_text = output.join
  end

  def rotator(input, a, b, c, d)
    input.map do |index, char|
      alpha_index = alphabet.find_index(char)
      if index % 4 == 0
        alphabet.rotate(a)[alpha_index]
      elsif index % 4 == 1
        alphabet.rotate(b)[alpha_index]
      elsif index % 4 == 2
        alphabet.rotate(c)[alpha_index]
      elsif index % 4 == 3
        alphabet.rotate(d)[alpha_index]
      end
    end
  end
  # def encipher(a, b, c, d)
  #   heck = @input_text.map do |char|
  #     if alphabet.include?(char)
  #       index = alphabet.find_index(char)
  #       alphabet[(index + choose(char, a, b, c, d)) % 27]
  #     else
  #       char
  #     end
  #   end
  #
  #   heck.join
  # end
  #
end
