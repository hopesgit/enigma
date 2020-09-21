require "./lib/encodable"

class Translator
  include Encodable
  
  attr_reader :input_text, :output_text

  def initialize(input_text)
    @input_text = input_text
    @output_text = nil
  end
end
