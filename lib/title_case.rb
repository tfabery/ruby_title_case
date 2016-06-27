require('rspec')

class String
  define_method(:title_case) do
    words_array = self.split(" ")
    title_array = []
    lowercase_words = ["and", "of", "the", "but", "a", "an", "or", "for", "on", "at", "to", "from", "by", "with"]
    words_array.each() do |word|
      if lowercase_words.include?(word)
        title_array.push(word)
        elsif
        title_array.push(word.capitalize())
      end
    end
    first_word = (title_array.shift().capitalize())
    title_array.unshift(first_word)
    last_word = (title_array.pop().capitalize())
    title_array.push(last_word)
    title_string = title_array.join(" ")
    title_string
  end
end
