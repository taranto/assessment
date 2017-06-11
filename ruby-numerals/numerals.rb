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
		evaluate_numeral = base_num
		case base_num
		when 1000..9999
			ignore_zero = true
			numeral_right_part_number = numeral_right_part(evaluate_numeral, 2)
			numeral_right_part_translation = translate_process(numeral_right_part_number, partial_translation, ignore_zero, space_required)
			numeral_left_part_number = numeral_left_part(evaluate_numeral, 2)
			numeral_left_part_translation = translate_process(numeral_left_part_number, partial_translation, ignore_zero, space_required)
			partial_translation = numeral_left_part_translation + ' ' + 
				NumeralsStrings.translate_x00 + 
				add_begin_space_if_not_null(add_begin_AND_if_not_null(numeral_right_part_translation))
		when 100..999
			ignore_zero = true
			numeral_right_part_number = numeral_right_part(evaluate_numeral, 1)
			numeral_right_part_translation = translate_process(numeral_right_part_number, partial_translation, ignore_zero, space_required)
			numeral_left_part_number = numeral_left_part(evaluate_numeral, 1)
			numeral_left_part_translation = translate_process(numeral_left_part_number, partial_translation, ignore_zero, space_required)
			partial_translation = numeral_left_part_translation + ' ' + 
				NumeralsStrings.translate_x00 + 
				add_begin_space_if_not_null(add_begin_AND_if_not_null(numeral_right_part_translation))
		when 10..19
			ignore_zero = true
			partial_translation = add_end_space_if_required(partial_translation, space_required) + 
				NumeralsStrings.translate_10_to_19(evaluate_numeral)
			evaluate_numeral = numeral_right_part(evaluate_numeral, 2)
			partial_translation = translate_process(evaluate_numeral, partial_translation, ignore_zero, true)
		when 20..99
			ignore_zero = true
			partial_translation = add_end_space_if_required(partial_translation, space_required) + 
				NumeralsStrings.translate_20_to_99(evaluate_numeral)
			evaluate_numeral = numeral_right_part(evaluate_numeral, 1)
			partial_translation = translate_process(evaluate_numeral, partial_translation, ignore_zero, true)
		when 0..9
			if(0 != evaluate_numeral || !ignore_zero) 
				partial_translation = add_end_space_if_required(partial_translation, space_required) + 
					NumeralsStrings.translate_0_to_9(evaluate_numeral)
			end
		end
		space_required = true
		partial_translation
	end

	def self.numeral_right_part num, cut_position
		num.to_s[cut_position..-1].to_i
	end

	def self.numeral_left_part num, cut_position
		num.to_s[0..cut_position-1].to_i
	end

	def self.add_end_space_if_required partial_translation, space_required
		if (space_required) 
			partial_translation = partial_translation + ' '
		end
		partial_translation
	end

	def self.add_begin_space_if_not_null partial_translation
		add_begin_something_if_not_null(partial_translation, ' ')
	end

	def self.add_begin_AND_if_not_null partial_translation
		add_begin_something_if_not_null(partial_translation, 'and ')
	end

	def self.add_begin_something_if_not_null partial_translation, something
		if (partial_translation.length > 0) 
			partial_translation = something + partial_translation
		end
		partial_translation
	end

end

