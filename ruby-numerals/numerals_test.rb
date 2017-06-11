require 'test/unit'
require './numerals'

class NumeralsTest < Test::Unit::TestCase

	def test_translate_an_unit_to_english1
		assert_equal('one', Numerals.translate_numeral(1))
	end
	def test_translate_an_unit_to_english8
		assert_equal('eight', Numerals.translate_numeral(8))
	end
	def test_translate_an_unit_to_english0
		assert_equal('zero', Numerals.translate_numeral(0))
	end
end	



