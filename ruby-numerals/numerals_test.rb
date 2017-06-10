require 'test/unit'
require './numerals'

class NumeralsTest < Test::Unit::TestCase

	def test_first_method
		assert_equal('expected result', 
			Numerals.first_method(1,2))
	end
	def test_second_method
		assert_equal('unexpected result', 
			Numerals.second_method(1,2))
	end
end	