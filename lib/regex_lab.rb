require 'pry'

def starts_with_a_vowel?(word)
  word.match(/\b[aeiou]/i) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun[a-z]*ing/)
end

def words_five_letters_long(text)
  text.scan(/\b[a-z]{5}\b/i)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  #My initial bad answer.  Tried to handle double quotes (ex. He said "yadda yadda".) but 
  # that is actually really complicated
  # scan will return array of matches.  So we add those all up to make sure there is no extra
  # stuff in text that is outside of the pattern.  Must be a better way!   
  #count = 0;
  #text.scan(/^[A-Z]+[^.!?]*[.!?"]+/) { | sentence | count += sentence.length}
  #count == text.length ? true : false
  #  better answer for most cases (now I understand $)
  text.match(/^[A-Z].*[.!?"]$/) ? true : false
end

#note: doesn't really work all the time.  Ex. (8085551212 is ok.   Not sure how to say if you see 1st (, you need to match the closing )
def valid_phone_number?(phone)
  phone.match(/(\d\s)?\(?\d{3}\)?[\s-]?\d{3}[\s-]?\d{4}\z/) == nil ? false : true
end

first_word_capitalized_and_ends_with_punctuation?("Did you hear about the guy whose whole left side was cut off? He's all right now")
