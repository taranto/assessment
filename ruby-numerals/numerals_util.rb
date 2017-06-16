
class NumeralsUtil
	def self.numeral_right_part num, cut_pos
		num.to_s[cut_pos..-1].to_i
	end

	def self.numeral_left_part num, cut_pos
		num.to_s[0..cut_pos-1].to_i
	end

	def self.numeral_fraction num, cut_pos_begin, cut_pos_end
		num.to_s[cut_pos_begin..cut_pos_end-1].to_i
	end

	def self.add_end_space_if_required partial_transl, space_req
		add_end_something_if_required(partial_transl, space_req, ' ')
	end

	def self.add_end_minus_if_required partial_transl, space_req
		add_end_something_if_required(partial_transl, space_req, '-')
	end

	def self.add_end_something_if_required partial_transl, space_req, something
		if (space_req) 
			partial_transl = partial_transl + something
		end
		partial_transl
	end

	def self.add_prefix_if_not_null partial_transl, prefix
		if (partial_transl.to_s.length > 0) 
			partial_transl = partial_transl + prefix
		end
		partial_transl
	end

	def self.add_begin_space_if_not_null partial_transl
		add_begin_something_if_not_null(partial_transl, ' ')
	end

	def self.add_begin_AND_if_not_null partial_transl
		add_begin_something_if_not_null(partial_transl, 'and ')
	end

	def self.add_begin_something_if_not_null partial_transl, something
		if (partial_transl.to_s.length > 0) 
			partial_transl = something + partial_transl
		end
		partial_transl
	end

	def self.add_AND_before_last_not_null_part part1, part2, part3
		if (part3.to_s.length > 0)
			part3 = ' and' + part3
		elsif (part2.to_s.length > 0)
			part2 = ' and' + part2
		end
		part1 + part2 + part3
	end
	def self.clear_number dirty_number
		dirty_number.to_s.gsub(/[^0-9.]/, "").to_i
	end
end