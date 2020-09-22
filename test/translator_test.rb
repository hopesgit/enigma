require "./test/test_helper"

class TranslatorTest < Minitest::Test
  def setup
    @translator = Translator.new(["a", "b", "c", "d", "e"])
    @translator2 = Translator.new(["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"])
    @translator3 = Translator.new(["t", "e", "s", "t", " ", "/", " ", "i", "n", "g"])
  end

  def test_it_is_translator
    assert_instance_of Translator, @translator
  end

  def test_it_has_attributes
    assert_equal ["a", "b", "c", "d", "e"], @translator.input_text
    assert_nil @translator.output_text
  end

  def test_it_has_alphabet
    assert_equal 27, @translator.alphabet.count
    assert @translator.alphabet.include?(" ")
    assert @translator2.alphabet.include?("z")
    assert @translator3.alphabet.include?("w")
  end

  def test_it_can_transform_text
    assert_equal "faymj", @translator.encipher(5, 26, 22, 9)
  end

  def test_it_can_transform_more_complicated_text
    assert_equal "keder ohulw", @translator2.encipher(3, 0, 19, 20)
  end

  def test_it_can_handle_non_alpha_characters
    assert_equal "cjeoj/mdxl", @translator3.encipher(10, 5, 13, 22)
  end
end
