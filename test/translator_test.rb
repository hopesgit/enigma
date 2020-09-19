require "./test/test_helper"

class TranslatorTest < Minitest::Test
  def test_it_is_translator
    translator = Translator.new

    assert_instance_of Translator, translator
  end
end
