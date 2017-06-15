require 'test/unit'
require './numerals'

class NumeralsTest < Test::Unit::TestCase

 	def test_translate_a_numeral_to_english7
		assert_equal('seven', Numerals.translate_numeral(7))
	end
	def test_translate_a_numeral_to_english0
		assert_equal('zero', Numerals.translate_numeral(0))
	end
	def test_translate_a_numeral_to_english40
		assert_equal('twenty', Numerals.translate_numeral(20))
	end
	def test_translate_a_numeral_to_english42
		assert_equal('forty-two', Numerals.translate_numeral(42))
	end
	def test_translate_a_numeral_to_english66
		assert_equal('sixty-six', Numerals.translate_numeral(66))
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
		assert_equal('four hundred and forty-four', Numerals.translate_numeral(444))
 	end
 	def test_translate_a_numeral_to_english3000
		assert_equal('thirty hundred', Numerals.translate_numeral(3000))
 	end
 	def test_translate_a_numeral_to_english1999
		assert_equal('nineteen hundred and ninety-nine', Numerals.translate_numeral(1999))
 	end
 	def test_translate_a_numeral_to_english7900
		assert_equal('seventy-nine hundred', Numerals.translate_numeral(7900))
 	end
 	def test_translate_a_numeral_to_english17999
		assert_equal('seventeen thousand nine hundred and ninety-nine', Numerals.translate_numeral(17999))
 	end
 	def test_translate_a_numeral_to_english10000
		assert_equal('ten thousand', Numerals.translate_numeral(10000))
 	end
 	def test_translate_a_numeral_to_english11000
		assert_equal('eleven thousand', Numerals.translate_numeral(11000))
 	end
 	def test_translate_a_numeral_to_english11001
		assert_equal('eleven thousand and one', Numerals.translate_numeral(11001))
 	end
 	def test_translate_a_numeral_to_english11012
		assert_equal('eleven thousand and twelve', Numerals.translate_numeral(11012))
 	end
 	def test_translate_a_numeral_to_english11100
		assert_equal('eleven thousand and one hundred', Numerals.translate_numeral(11100))
 	end
 	def test_translate_a_numeral_to_english11111
		assert_equal('eleven thousand one hundred and eleven', Numerals.translate_numeral(11111))
 	end
 	def test_translate_a_dirty_numeral_to_english1
		assert_equal('one', Numerals.translate_numeral('1\n'))
 	end
 	def test_translate_a_dirty_numeral_to_english2
		assert_equal('two', Numerals.translate_numeral('2\a*(())_+-=][adsfadn'))
 	end
 	def test_translate_a_dirty_numeral_to_english30
		assert_equal('thirty', Numerals.translate_numeral('003,0'))
 	end
 	def test_translate_a_dirty_numeral_to_english40
		assert_equal('forty', Numerals.translate_numeral('4,0'))
 	end
 	def test_translate_a_dirty_numeral_to_english0
		assert_equal('zero', Numerals.translate_numeral('fadsfadf'))
 	end
 	def test_translate_a_dirty_numeral_to_english7
		assert_equal('seven', Numerals.translate_numeral('fadsfadf7'))
 	end
 	def test_translate_a_dirty_numeral_to_english_nil
		assert_equal('zero', Numerals.translate_numeral(''))
 	end
 	def test_translate_a_dirty_numeral_to_english_fraction
		assert_equal('zero', Numerals.translate_numeral('0.55'))
 	end
 	def test_translate_a_numeral_to_english_overflow
		assert_equal('', Numerals.translate_numeral('123456'))
 	end
end	