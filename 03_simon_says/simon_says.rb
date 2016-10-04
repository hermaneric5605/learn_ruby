#write your code here
def echo(words)
   words
end
 
def shout(words)
   words.upcase 
end

def repeat(words, time=2)
	said = "#{words} "
	result = (said * time).strip
	return result
end 



def start_of_word(words, start)
	words[0..start-1]
end

def first_word(words)
	words.split(" ")[0]
end

def titleize(title)
    little_words = ['a','an','the','at','by','for','in','of','on','to','up',
		'and','as','but','it','or','nor','over']
	new_title = title.split(" ")
	first_word = new_title[0].capitalize
	if new_title.length == 1
		return first_word
	else
		first_word + " " + new_title[1..-1].map{ |word| little_words.include?(word) == false ? word.capitalize : word}.join(" ")
	end
end