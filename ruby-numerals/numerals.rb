#!/usr/bin/ruby

#puts 'Hello world'

#puts 'me diga um numero'
#name = gets
#puts name

class Numerals 
	def self.translate_numeral num
		if (num == 1)
			'one'
		elsif (num == 8)
			'eight'
		else (num == 0)
			'zero'
		end
	end
end