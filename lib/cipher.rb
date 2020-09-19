class Cipher
  def initialize(text)
    @text = text
    @key = get_key
  end

  def text
    @text.downcase.split(//)
  end

  def get_key
    Calculator.get_key
  end
end
