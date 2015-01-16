require 'minitest/autorun'

require 'enumerator'

module Luhn
	def self.is_valid(numbers)

		digits = numbers.to_s.bytes.collect {|char| char.chr.to_i }
		
		transformed = digits.to_enum(:each_with_index).collect do |digit, index| 
			if index % 2 != 1 
				doubled = digit * 2 
				if doubled > 9 
					doubled = doubled - 9 
				end
				doubled # without this, it would return nil for anything less than 9
			else 
				digit 
			end 
		end 

		puts transformed.inspect 
		transformed.to_a.inject {|sum, n| (sum + n)} % 10 
			if transformed == 0 
				return "This is a valid credit card."
			else 
				return "This is not a valid credit card"
			end
		end
end

 
class TestLuhn < MiniTest::Unit::TestCase

	# What should I write for this test?? 
	def test_luhn_valid
		assert Luhn.is_valid(4194560385008504)
		assert_equal = "This is a valid credit card."
	end

	def test_luhn_invalid
		assert Luhn.is_valid(4242424242424242)
		assert_equal = "This is not a valid credit card."
	end

end

