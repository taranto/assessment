require 'test/unit'
require './numerals_util'

class NumeralsUtilTest < Test::Unit::TestCase

	def test_numeral_right_part34
		assert_equal(34, NumeralsUtil.numeral_right_part(234, 1))
	end
	def test_numeral_right_part4
		assert_equal(4, NumeralsUtil.numeral_right_part(234, 2))
	end
	def test_numeral_left_part12
		assert_equal(23, NumeralsUtil.numeral_left_part(234, 2))
	end
	def test_numeral_left_part1
		assert_equal(2, NumeralsUtil.numeral_left_part(234, 1))
	end
	def test_numeral_right_part1997
		assert_equal(97, NumeralsUtil.numeral_right_part(1997, 2))
	end
	def test_numeral_left_part1999
		assert_equal(19, NumeralsUtil.numeral_left_part(1999, 2))
	end
	def test_numeral_fraction123456
		assert_equal(34, NumeralsUtil.numeral_fraction(123456, 2, 4))
	end
	def test_numeral_right_part123456
		assert_equal(56, NumeralsUtil.numeral_right_part(123456, 4))
	end
	def test_numeral_left_part1123456
		assert_equal(12, NumeralsUtil.numeral_left_part(123456, 2))
	end
end