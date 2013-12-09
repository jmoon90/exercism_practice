require 'pry'

def word_count(sentence)
  word_count = Hash.new(0)
  if sentence.include?(',')
    new_sentence = []
    sentence_split = sentence.split(',')
    sentence_split.each do |sentence|
      new_sentence << sentence.split(' ')
    end
    new_sentence
  else
    new_sentence = sentence.split(' ')
  end
  new_sentence.flatten.each do |word|
    matched_word = word.match(/[a-z0-9]/)
    matched_word ? formatted_word = matched_word.string.gsub(/[^a-zA-Z0-9]/, '') : next
    word_count[formatted_word] += 1
  end
  puts word_count
end
word_count('testing, 1, 2 testing')

