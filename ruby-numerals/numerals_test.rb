require 'test/unit'
require './numerals'

class NumeralsTest < Test::Unit::TestCase

 	def test_translate_a_numeral_to_english7
		assert_equal('seven', Numerals.translate_numeral(7))
	end
	def test_translate_a_numeral_to_english0
		assert_equal('zero', Numerals.translate_numeral(0))
	end
	def test_numeral_right_part34
		assert_equal(34, Numerals.numeral_right_part(234, 1))
	end
	def test_numeral_right_part4
		assert_equal(4, Numerals.numeral_right_part(234, 2))
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
 	def test_numeral_left_part12
		assert_equal(23, Numerals.numeral_left_part(234, 2))
	end
	def test_numeral_left_part1
		assert_equal(2, Numerals.numeral_left_part(234, 1))
	end
 	def test_translate_a_numeral_to_english100
		assert_equal('one hundred', Numerals.translate_numeral(100))
 	end
	def test_translate_a_numeral_to_english101
		assert_equal('one hundred and one', Numerals.translate_numeral(101))
 	end
 	def test_translate_a_numeral_to_english111
		assert_equal('one hundred and eleven', Numerals.translate_numeral(111))
 	end
 	def test_translate_a_numeral_to_english444
		assert_equal('four hundred and forty four', Numerals.translate_numeral(444))
 	end
end	



