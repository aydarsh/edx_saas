# -*- encoding : utf-8 -*-
def palindrome?(string)
	string.downcase.gsub(/\W/,"")==string.downcase.gsub(/\W/,"").reverse
end

def count_words(string)
	str=string.downcase.gsub(/\W\B/," ").split(' ')
	str_hash=Hash.new
	str.uniq.each do |el|
		str_hash[el]=str.count(el)
	end
	str_hash
end

#palindrome?("A man, a plan, a canal -- Panama")
#palindrome?("Doo bee doo bee doo")
#count_words("A man, a plan, a canal -- Panama")
#count_words("Madam, I'm Adam")
#count_words("Doo bee doo bee doo")
