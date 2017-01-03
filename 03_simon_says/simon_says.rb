#write your code here

def echo(a)
	a
end

def shout(a)
	a.upcase
end

def repeat(a, b=2)
	((a+' ') * b).strip
end

def start_of_word(word, number_of_letters)
	word[0,number_of_letters]
end

def first_word(string)
	array_of_words = string.split
	array_of_words[0]
end

def titleize(string)
	array_of_words = string.split
	capitalized_array_of_words = []

	array_of_words.each do |word|
		if word == 'and' or word == 'the' or word == 'over'
			capitalized_array_of_words.push(word)
		else
			capitalized_array_of_words.push(word.capitalize)
		end
	end
	capitalized_array_of_words[0].capitalize!
	capitalized_array_of_words.join(' ')
end