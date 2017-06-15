require './numerals'

class Main
	def self.start_application
		puts 'Tell me a number, then I give you it\'s name in english'
		num = gets
		answer = Numerals.translate_numeral(num).to_s
		if (answer.to_s.length == 0)
			puts 'I\'m not ready to give this answer yet...'
		else 
			puts 'The number is called ' + answer
		end
	end
end
Main.start_application