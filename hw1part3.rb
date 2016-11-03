# -*- encoding : utf-8 -*-
#sample_words=['Cars','for','potatoes','racs','four','scar','creams','scream']

def combine_anagrams(words)
	words.group_by { |word| word.downcase.chars.sort }.values
end

#p combine_anagrams(sample_words)
