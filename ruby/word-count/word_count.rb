class Phrase
  def initialize(string)
    @string = string.downcase.tr(","," ").split(" ")
    @string.map! do |word|
      if word.start_with?("'") && word.end_with?("'")
        word.tr("'","")
      elsif !word.include?("'") 
        word.gsub(/\W+/, '')
      else
        word
      end
    end
    @string
  end

  def word_count
    counter = {}
    @string.each do |word, count|
      counter[:"#{word}".to_s] = @string.count(word)
    end
    counter
  end
end

module BookKeeping
   VERSION = 1 # Where the version number matches the one in the test.
end