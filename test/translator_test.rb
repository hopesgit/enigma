require "./test/test_helper"

class TranslatorTest < Minitest::Test
  def setup
    @translator = Translator.new(["a", "b", "c", "d", "e"])
  end

  def test_it_is_translator
    assert_instance_of Translator, @translator
  end

  def test_it_has_attributes
    assert_equal ["a", "b", "c", "d", "e"], @translator.input_text
    assert_nil @translator.output_text
  end
end
