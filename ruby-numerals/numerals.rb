#!/usr/bin/ruby
require './numerals_strings'
require 'pry'

#puts 'Hello world'

#puts 'tell me a number'
#name = gets
#puts name

class Numerals 
	def self.translate_numeral num
		translation = translate_process(num, '', false, false)
	end

	def self.translate_process base_num, partial_translation, ignore_zero, space_required
		evaluated_numeral = base_num
		case base_num
		when 10..19
			ignore_zero = true
			partial_translation = add_end_space_if_required(partial_translation, space_required) + NumeralsStrings.translate_ten_to_nineteen_stirng(evaluated_numeral)
			evaluated_numeral = cut_number(evaluated_numeral, 2)
			partial_translation = translate_process(evaluated_numeral, partial_translation, ignore_zero, true)
		when 20..99
			ignore_zero = true
			partial_translation = add_end_space_if_required(partial_translation, space_required) + NumeralsStrings.translate_twenty_to_ninety_string(evaluated_numeral)
			evaluated_numeral = cut_number(evaluated_numeral, 1)
			partial_translation = translate_process(evaluated_numeral, partial_translation, ignore_zero, true)
		when 0..9
			if(0 != evaluated_numeral || !ignore_zero) 
				partial_translation = add_end_space_if_required(partial_translation, space_required) + NumeralsStrings.translate_unit_string(evaluated_numeral)
			end
		end
		space_required = true
		partial_translation
	end

	def self.cut_number num, position
		num.to_s[position..-1].to_i
	end

	def self.add_end_space_if_required partial_translation, space_required
		if (space_required) 
			partial_translation = partial_translation + ' '
		end
		partial_translation
	end
end

