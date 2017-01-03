class Book
# write your code here

	def title= (title)
		words_in_title = title.split
		small_words = ["and", "in", "the", "of", "a", "an"]
		words_in_title.each do |word|
			if not small_words.include?(word)
				word.capitalize!
			end
		end
		words_in_title[0].capitalize!
		@title = words_in_title.join(' ')
	end

	def title
		@title
	end

end
