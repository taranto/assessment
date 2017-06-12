require './numerals'

class Main
	def self.start_application
		puts 'Tell me a number, then I give you it\'s name in english'
		num = gets
		puts 'The number is called ' + Numerals.translate_numeral(num).to_s
	end
end
Main.start_application