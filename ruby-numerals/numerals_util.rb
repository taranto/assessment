
class NumeralsUtil
	def self.numeral_right_part num, cut_position
		num.to_s[cut_position..-1].to_i
	end

	def self.numeral_left_part num, cut_position
		num.to_s[0..cut_position-1].to_i
	end

	def self.numeral_fraction num, cut_position_begin, cut_position_end
		num.to_s[cut_position_begin..cut_position_end-1].to_i
	end

	def self.add_end_space_if_required partial_translation, space_required
		add_end_something_if_required(partial_translation, space_required, ' ')
	end

	def self.add_end_minus_if_required partial_translation, space_required
		add_end_something_if_required(partial_translation, space_required, '-')
	end

	def self.add_end_something_if_required partial_translation, space_required, something
		if (space_required) 
			partial_translation = partial_translation + something
		end
		partial_translation
	end

	def self.add_prefix_if_not_null partial_translation, prefix
		if (partial_translation.to_s.length > 0) 
			partial_translation = partial_translation + prefix
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
		if (partial_translation.to_s.length > 0) 
			partial_translation = something + partial_translation
		end
		partial_translation
	end

	def self.add_AND_before_last_not_null_part part1, part2, part3
		if (part3.to_s.length > 0)
			part3 = ' and' + part3
		elsif (part2.to_s.length > 0)
			part2 = ' and' + part2
		end
		part1 + part2 + part3
	end
end