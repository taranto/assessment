class NumeralsStrings


	def self.translate_0_to_9 num
		case num
		when 0
			'zero'
		when 1
			'one'
		when 2 
			'two'
		when 3
			'three'
		when 4
			'four'
		when 5
			'five'
		when 6
			'six'
		when 7
			'seven'
		when 8
			'eight'
		when 9
			'nine'
		end
	end

	def self.translate_10_to_19 num
		case num
		when 10
			'ten'
		when 11
			'eleven'
		when 12 
			'twelve'
		when 13
			'thirteen'
		when 14
			'fourteen'
		when 15
			'fifteen'
		when 16
			'sixteen'
		when 17
			'seventeen'
		when 18
			'eighteen'
		when 19
			'nineteen'
		end
	end

	def self.translate_20_to_99 num
		case num
		when 20..29
			'twenty'
		when 30..39
			'thirty'
		when 40..49
			'forty'
		when 50..59
			'fifty'
		when 60..69
			'sixty'
		when 70..79
			'seventy'
		when 80..89
			'eighty'
		when 90..99
			'ninety'
		end
	end

	def self.translate_x00
		'hundred'
	end

	def self.translate_x000
		'thousand'
	end
end