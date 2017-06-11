#!/usr/bin/ruby
require './numerals_strings'
require 'pry'

#puts 'Hello world'

#puts 'tell me a number'
#name = gets
#puts name

class Numerals 
	def self.translate_numeral num
		translation = translate_process(num, '', false)
		removeLeftoverSpace(translation)
	end

	def self.translate_process base_num, partial_translation, ignore_zero
		evaluated_numeral = base_num
		case base_num
		when 10..19
			ignore_zero = true
			partial_translation = partial_translation + ' ' + NumeralsStrings.translate_ten_to_nineteen_stirng(evaluated_numeral)
			evaluated_numeral = cut_number(evaluated_numeral, 2)
	#		puts "10..99 base_num #{base_num} ignore_zero #{ignore_zero} evaluated_numeral #{evaluated_numeral} partial_translation #{partial_translation}"
			partial_translation = translate_process(evaluated_numeral, partial_translation, ignore_zero)
		when 20..99
			ignore_zero = true
			partial_translation = partial_translation + ' ' + NumeralsStrings.translate_twenty_to_ninety_string(evaluated_numeral)
			evaluated_numeral = cut_number(evaluated_numeral, 1)
	#		puts "10..99 base_num #{base_num} ignore_zero #{ignore_zero} evaluated_numeral #{evaluated_numeral} partial_translation #{partial_translation}"
			partial_translation = translate_process(evaluated_numeral, partial_translation, ignore_zero)
		when 0..9
			if(0 != evaluated_numeral || !ignore_zero) 
	#			puts "0..9 base_num #{base_num} ignore_zero #{ignore_zero} evaluated_numeral #{evaluated_numeral} partial_translation #{partial_translation}"
				partial_translation = partial_translation + ' ' + NumeralsStrings.translate_unit_string(evaluated_numeral)
			end
		end
	#	puts "translate_process end: partial_translation #{partial_translation} "
		partial_translation
	end

	def self.cut_number num, position
		num.to_s[position..-1].to_i
	end

	def self.removeLeftoverSpace string 
		if (' '.eql?string[0]) 
			string = string[1..-1]
		end
		string
	end
end

