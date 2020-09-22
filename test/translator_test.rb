require "./test/test_helper"

class TranslatorTest < Minitest::Test
  def setup
    @translator = Translator.new(["a", "b", "c", "d", "e"])
    @translator2 = Translator.new(["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"])
  end

  def test_it_is_translator
    assert_instance_of Translator, @translator
  end

  def test_it_has_attributes
    assert_equal ["a", "b", "c", "d", "e"], @translator.input_text
    assert_nil @translator.output_text
  end

  # def test_it_can_transform_text
  #   assert_equal "faymj", @translator.encipher(5, 26, 22, 9)
  # end

  def test_it_can_transform_more_complicated_text
    assert_equal "keder ohulw", @translator2.encipher(3, 0, 19, 20)
  end
end
