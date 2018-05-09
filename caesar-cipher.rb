=begin
	.chr char code -> char
	.ord char -> char code
	A - 65
	Z - 90

	a - 97
	z - 122
=end
def encrypt_charcode(char_code, num)
	if char_code >= 65 && char_code <= 90
		if char_code + num > 90 
			return char_code + num - 90 + 64
		elsif char_code + num < 65
			return 91 - (65 - char_code)
		else 
			return char_code + num
		end
	end

	if char_code >= 97 && char_code <= 122
		if char_code + num > 122
			return char_code + num - 122 + 96
		elsif char_code + num < 97
			return 123 - (97 - char_code)
		else
			return char_code + num
		end
	end

	return char_code
end

def encrypt_word(word, num)
	result = ''
	word.length.times do |index|
		char_code = word[index].ord
		new_charcode = encrypt_charcode(char_code, num)
		result += new_charcode.chr
	end
	result
end

def caesar_cipher(text, num)
	arr = text.split(' ')
	arr = arr.map do |str|
		encrypt_word(str, num)
	end
	arr.join(' ')
end



puts "Enter your text:"
text = gets.chomp

puts "Enter your key:"
key = gets.chomp

puts caesar_cipher(text, key.to_i)
