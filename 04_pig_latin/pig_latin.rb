#write your code here


def translate(string)
	#puts "goit this input: " + string
	words = string.split
	#puts "made this array: " + words.to_s
	result = ""
	words.each do |word|
		#puts "entered loop with " + word
		if word[0] == 'a' or word[0] == 'e' or word[0] == 'i' or word[0] == 'o' or word[0] == 'u'
			if (word == word.capitalize)
				if word.include? "."
					word.tr!('.','')
					result += word.capitalize + "ay. "
				else
					result += word.capitalize + "ay "
				end
			else
				if word.include? "."
					word.tr!('.','')
					result += word.capitalize + "ay. "
				else
				result += word + "ay "
			end

			end
		else
			first_vocal = 0;
			for i in 0..word.length-1
				if word[i] == 'a' or word[i] == 'e' or word[i] == 'i' or word[i] == 'o' or word[i] == ''
					#puts "found "+word[i] +" at index "+ i.to_s
					first_vocal = i
					break
				end
			end
			if (word == word.capitalize)
				if word.include? "."
					result += word[first_vocal..word.length].capitalize + word[0..first_vocal-1].downcase + "ay "
				else
					result += word[first_vocal..word.length].capitalize + word[0..first_vocal-1].downcase + "ay "	
				end
			else
				if word.include? "."
					word.tr!('.','')
					result += word[first_vocal..word.length] + word[0..first_vocal-1] + "ay. "
				else
	
					result += word[first_vocal..word.length] + word[0..first_vocal-1] + "ay "
				end
			end
		end
			
	end
	return result.strip
end
	
puts translate("quiet")
puts
