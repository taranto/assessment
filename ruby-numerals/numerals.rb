require './numerals_strings'
require './numerals_util'

class Numerals 

	def self.translate_numeral num
		num = NumeralsUtil.clear_number(num)
		translate_process(num, '', false, false)
	end

	private

	def self.translate_process num, partial_transl, ignore_zero, space_required
		case num
		when 10000..99999
			ignore_zero = true
			right_part_number = NumeralsUtil.numeral_right_part(num, 3)
			right_part_transl = translate_process(right_part_number, partial_transl, ignore_zero, space_required)
			third_part_result = NumeralsUtil.add_begin_space_if_not_null(right_part_transl)

			middle_part_number = NumeralsUtil.numeral_fraction(num, 2, 3)
			middle_part_transl = translate_process(middle_part_number+00, partial_transl, ignore_zero, space_required)
			second_part_result = NumeralsUtil.add_begin_space_if_not_null(middle_part_transl)
			second_part_result = NumeralsUtil.add_prefix_if_not_null(
					NumeralsUtil.add_begin_space_if_not_null(middle_part_transl), ' ' + NumeralsStrings.translate_x00)

			left_part_number = NumeralsUtil.numeral_left_part(num, 2)
			left_part_transl = translate_process(left_part_number, partial_transl, ignore_zero, space_required)
			first_part_result = left_part_transl + ' ' + NumeralsStrings.translate_x000

			partial_transl = NumeralsUtil.add_AND_before_last_not_null_part(
				first_part_result, second_part_result, third_part_result)
		when 1000..9999
			ignore_zero = true
			right_part_number = NumeralsUtil.numeral_right_part(num, 2)
			right_part_transl = translate_process(right_part_number, partial_transl, ignore_zero, space_required)

			left_part_number = NumeralsUtil.numeral_left_part(num, 2)
			left_part_transl = translate_process(left_part_number, partial_transl, ignore_zero, space_required)

			partial_transl = left_part_transl + ' ' + 
				NumeralsStrings.translate_x00 + 
				NumeralsUtil.add_begin_space_if_not_null(NumeralsUtil.add_begin_AND_if_not_null(right_part_transl))
		when 100..999
			ignore_zero = true
			right_part_number = NumeralsUtil.numeral_right_part(num, 1)
			right_part_transl = translate_process(right_part_number, partial_transl, ignore_zero, space_required)

			left_part_number = NumeralsUtil.numeral_left_part(num, 1)
			left_part_transl = translate_process(left_part_number, partial_transl, ignore_zero, space_required)

			partial_transl = left_part_transl + ' ' + 
				NumeralsStrings.translate_x00 + 
				NumeralsUtil.add_begin_space_if_not_null(NumeralsUtil.add_begin_AND_if_not_null(right_part_transl))
		when 10..19
			ignore_zero = true
			partial_transl = NumeralsUtil.add_end_space_if_required(partial_transl, space_required) + 
				NumeralsStrings.translate_10_to_19(num)
			num = NumeralsUtil.numeral_right_part(num, 2)
			partial_transl = translate_process(num, partial_transl, ignore_zero, true)
		when 20..99
			ignore_zero = true
			partial_transl = NumeralsUtil.add_end_space_if_required(partial_transl, space_required) + 
				NumeralsStrings.translate_20_to_99(num)
			num = NumeralsUtil.numeral_right_part(num, 1)
			partial_transl = translate_process(num, partial_transl, ignore_zero, true)
		when 0..9
			if(0 != num || !ignore_zero) 
				partial_transl = NumeralsUtil.add_end_minus_if_required(partial_transl, space_required) + 
					NumeralsStrings.translate_0_to_9(num)
			end
		end
		space_required = true
		partial_transl
	end

end