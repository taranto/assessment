require 'test/unit'
require './numerals'

class NumeralsTest < Test::Unit::TestCase

 	def test_translate_a_numeral_to_english7
		assert_equal('seven', Numerals.translate_numeral(7))
	end
	def test_translate_a_numeral_to_english0
		assert_equal('zero', Numerals.translate_numeral(0))
	end
	def test_cut_number1
		assert_equal(23, Numerals.cut_number(123, 1))
	end
	def test_cut_number2
		assert_equal(3, Numerals.cut_number(123, 2))
	end
	def test_translate_a_numeral_to_english40
		assert_equal('twenty', Numerals.translate_numeral(20))
	end
	def test_translate_a_numeral_to_english42
		assert_equal('forty two', Numerals.translate_numeral(42))
	end
	def test_translate_a_numeral_to_english66
		assert_equal('sixty six', Numerals.translate_numeral(66))
 	end
 	def test_translate_a_numeral_to_english10
		assert_equal('ten', Numerals.translate_numeral(10))
 	end
 	def test_translate_a_numeral_to_english12
		assert_equal('twelve', Numerals.translate_numeral(12))
 	end
 	def test_translate_a_numeral_to_english15
		assert_equal('fifteen', Numerals.translate_numeral(15))
 	end
end	



